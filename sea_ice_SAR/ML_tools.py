import sys
import yaml
import numpy as np
import pandas
import seaborn as sns
import matplotlib.pyplot as plt

from math import sqrt
from sea_ice_SAR.utils import decompose_filepath
from collections import Counter
from sklearn.metrics import confusion_matrix
from sklearn.preprocessing import LabelEncoder
from sklearn.model_selection import KFold
from imblearn.under_sampling import RandomUnderSampler, OneSidedSelection


def config_parser(ml_config):
    """
    Parse the parameters defined in the configuration part.
    """
    num_epochs, hidden_size, verbosity, K = 100, None, 2, 1

    if ml_config:
        stream = open(ml_config, "r")
        config_dict = yaml.safe_load(stream)
    else:
        return num_epochs, hidden_size, verbosity, K

    num_epochs, hidden_size, verbosity, K, kernel_size = None, None, None, None, None
    if "configuration" in config_dict.keys():
        params = config_dict["configuration"]
        train_data = params["train_data"]
        test_data = params["test_data"]
        if "epochs" in params.keys():
            num_epochs = params["epochs"]
        if "hidden_size" in params.keys():
            hidden_size = params["hidden_size"]
        if "verbosity" in params.keys():
            verbosity = params["verbosity"]
        if "K-fold" in params.keys():
            K = params["K-fold"]
        if "kernel_size" in params.keys():
            kernel_size = params["kernel_size"]
        if "min_num_points" in params.keys():
            min_num_points = params["min_num_points"]
        else:
            min_num_points = 0
        if "masks" in params.keys():
            masks = params["masks"]
        else:
            masks = [-1, 0, 1, 2, 3]
        if "CNN_layers" in params.keys():
            CNN_layers = params["CNN_layers"]
        else:
            CNN_layers = []

    return (
        train_data,
        test_data,
        num_epochs,
        hidden_size,
        verbosity,
        K,
        kernel_size,
        min_num_points,
        masks,
        CNN_layers,
    )


def calculate_hidden_layer_size(input_layer_size, output_layer_size, user_defined=None):
    """
    Calculate the hidden layer size if user did not define the size
    """
    if user_defined == None:
        hidden_layer_size = ((input_layer_size + output_layer_size) * 2) // 3
    else:
        hidden_layer_size = user_defined

    if hidden_layer_size > 2 * input_layer_size:
        hidden_layer_size = 2 * input_layer_size

    if hidden_layer_size < 2:
        hidden_layer_size = 2

    return hidden_layer_size


def arrange_2d_arrays(df):
    df = df.drop(columns=["src_dir", "row", "col", "mask"])

    input_dimension = sqrt(df.shape[1])
    if int(input_dimension) != input_dimension:
        print("Window should be square", file=sys.stderr)
        sys.exit(1)
    else:
        input_dimension = int(input_dimension)

    layer_2d = np.asarray(
        [
            [
                sample[i * input_dimension : (i + 1) * input_dimension]
                for i in range(input_dimension)
            ]
            for sample in df.values
        ]
    )

    layer_2d = np.reshape(
        layer_2d, (len(layer_2d), input_dimension, input_dimension, 1)
    )

    return layer_2d, input_dimension


def process_data(
    data_file,
    ml_config=None,
    regression=True,
    min_num_points=0,
    masks=[-1, 0, 1, 2, 3],
    CNN_layers=[],
    resampling=True,
    dropna=True,
):
    """
    Merge labels and/or select feautres for learning
    based on the user definition in the configuration file
    """
    if ml_config:
        stream = open(ml_config, "r")
        config_dict = yaml.safe_load(stream)
    else:
        config_dict = None

    if type(data_file) != list:
        data_file = [data_file]

    df_li = [pandas.read_csv(df, header=0, index_col=False) for df in data_file]
    num_CNN_layers = 0
    CNN_stack = None
    for idx, df in enumerate(df_li):
        if idx == 0:
            dataframe = df
            dataframe["src_dir"] = dataframe["src_dir"].str.replace("_Spk", "")
            dataframe["src_dir"] = dataframe["src_dir"].str.replace("_canny", "")

        # use labels and num_points from the very first dataframe
        df = df.drop(columns=["label", "num_points"])

        _, filename, _ = decompose_filepath(data_file[idx])
        if filename in CNN_layers:
            layer_2d, input_dimension = arrange_2d_arrays(df)
            if num_CNN_layers == 0:
                CNN_stack = layer_2d
            else:
                CNN_stack = np.concatenate((CNN_stack, layer_2d), axis=-1)
            num_CNN_layers += 1
        elif idx > 0:
            df["src_dir"] = df["src_dir"].str.replace("_Spk", "")
            df["src_dir"] = df["src_dir"].str.replace("_canny", "")
            dataframe = pandas.merge(
                dataframe,
                df,
                on=["src_dir", "row", "col", "mask"],
                how="left",
            )

    if type(CNN_stack) == np.ndarray:
        CNN_stack = np.reshape(
            CNN_stack,
            (len(CNN_stack), input_dimension, input_dimension, num_CNN_layers, 1),
        )
        dataframe["CNN"] = CNN_stack.tolist()

    if dropna:
        dataframe = dataframe.dropna()

    dataframe.drop(
        dataframe[dataframe["num_points"] < min_num_points].index, inplace=True
    )
    dataframe.drop(dataframe[~dataframe["mask"].isin(masks)].index, inplace=True)

    label_key = "label"
    if config_dict:
        if "labels" in config_dict.keys():
            if "label" in config_dict["labels"].keys():
                label_key = config_dict["labels"]["label"]

            try:
                for idx, data_range in config_dict["labels"].items():
                    if type(data_range) == list:
                        min, max = data_range
                        dataframe[label_key] = np.where(
                            dataframe[label_key].between(min, max),
                            -idx,
                            dataframe[label_key],
                        )
                dataframe[label_key] = -dataframe[label_key]
            except KeyError:
                print("Error in configuration format", file=sys.stderr)
                sys.exit(1)

        if "drop_features" in config_dict.keys():
            try:
                dataframe.drop(
                    config_dict["drop_features"]
                    + ["label", "src_dir", "row", "col", "mask", "num_points", "np"]
                    - [label_key],
                    1,
                    inplace=True,
                )
            except KeyError:
                print("Error in configuration format", file=sys.stderr)
                sys.exit(1)
            except TypeError:
                None

    for col in ["label", "src_dir", "row", "col", "num_points", "mask", "np"]:
        if col == label_key:
            continue
        try:
            dataframe.drop(columns=[col], inplace=True)
        except KeyError:
            continue

    Q1 = dataframe[label_key].quantile(0.25)
    Q3 = dataframe[label_key].quantile(0.75)
    IQR = Q3 - Q1

    dataframe = dataframe.query(
        f"(@Q1 - 1.5 * @IQR) <= {label_key} <= (@Q3 + 1.5 * @IQR)"
    )

    if resampling:
        if regression:
            Y_classes, bins = pandas.cut(dataframe[label_key], bins=25, retbins=True)
            print(bins, file=sys.stdout)
            le = LabelEncoder()
            Y_classes = le.fit_transform(Y_classes)
            print(
                f"Before undersampling: {sorted(Counter(Y_classes).items())}",
                file=sys.stdout,
            )
            undersample = OneSidedSelection(n_neighbors=1, n_seeds_S=10)

            dataframe["idx"] = dataframe.index
            if type(CNN_stack) == np.ndarray:

                new_data, Y_classes = undersample.fit_resample(
                    dataframe.drop(["CNN"], axis=1), Y_classes
                )
                dataframe = new_data.merge(
                    dataframe[["idx", "CNN"]], left_on="idx", right_on="idx"
                )
            else:
                dataframe, Y_classes = undersample.fit_resample(dataframe, Y_classes)

            dataframe = dataframe.drop(["idx"], axis=1)

            print(
                f"After undersampling: {sorted(Counter(Y_classes).items())}",
                file=sys.stdout,
            )
        elif resampling:
            print(
                f"Before undersampling: {sorted(Counter(dataframe[label_key]).items())}",
                file=sys.stdout,
            )
            undersample = RandomUnderSampler(sampling_strategy="not minority")
            X, Y = undersample.fit_resample(
                dataframe.drop([label_key], axis=1), dataframe[label_key]
            )
            dataframe = pandas.concat([Y, X], axis=1)
            print(f"After undersampling: {sorted(Counter(Y).items())}", file=sys.stdout)

    print(dataframe, file=sys.stdout)
    CNN_dataset = None
    if type(CNN_stack) == np.ndarray:
        CNN_dataset = np.array([np.array(v) for v in dataframe["CNN"].values])
        dataframe = dataframe.drop(columns=["CNN"])

    dataset = dataframe.values
    print(f"Size of dataset: {dataset.shape}", file=sys.stdout)
    X = dataset[:, 1:].astype(float)
    Y = dataset[:, 0]

    if regression:
        return X, CNN_dataset, Y
    else:
        encoder = LabelEncoder()
        encoder.fit(Y)
        encoded_Y = encoder.transform(Y)
        print(f"Classes: {encoder.classes_}", file=sys.stdout)
        return X, CNN_dataset, encoded_Y, encoder.classes_


def learning_curve(model_hist, result_dir, iter):
    """
    This chunk of code is sourced and modified from Machin Learning Mastery [1].

    [1] J. Brownlee, “Display Deep Learning Model Training History in Keras,” Machine Learning Mastery, 03-Oct-2019. [Online].
    Available: https://machinelearningmastery.com/display-deep-learning-model-training-history-in-keras/. [Accessed: 16-Jul-2021].
    """
    # summarize history for accuracy
    if "accuracy" in model_hist.keys() and "val_accuracy" in model_hist.keys():
        plt.plot(model_hist["accuracy"])
        plt.plot(model_hist["val_accuracy"])
        plt.title(f"Learning Curve (Fold #: {iter+1})")
        plt.ylabel("Accuracy")
        plt.xlabel("Epoch")
        plt.legend(["Train", "Validation"], loc="lower right")
        plt.savefig(f"{result_dir}/learning_curve_{iter+1}.png")
        plt.clf()
    # summarize history for loss
    plt.plot(model_hist["loss"])
    plt.plot(model_hist["val_loss"])
    plt.title(f"Loss Curve (Fold #: {iter+1})")
    plt.ylabel("Loss")
    plt.xlabel("Epoch")
    plt.legend(["Train", "Validation"], loc="upper right")
    plt.savefig(f"{result_dir}/loss_curve_{iter+1}.png")
    plt.clf()


def construct_confusion_matrix(classes, Y_te, y_pred, result_dir, k):
    """
    Construct the confusion matrix and output the results
    """
    np.set_printoptions(threshold=np.inf, linewidth=np.inf, precision=1, suppress=True)
    print(np.asarray([classes]), file=sys.stdout)
    cm_percentage = (
        confusion_matrix(Y_te, y_pred, labels=np.unique(Y_te), normalize="true") * 100
    )
    cm_counts = confusion_matrix(Y_te, y_pred, labels=np.unique(Y_te))

    print(cm_percentage, file=sys.stdout)

    # cm_csv = open(f"{result_dir}/confusion_matrix_{k+1}.csv", "w", newline="")
    # cm_writer = csv.writer(cm_csv)
    # cm_writer.writerow(np.insert(classes, 0, None, axis=0))
    # for i, row in enumerate(cm_counts):
    #     cm_writer.writerow(np.insert(row, 0, classes[i], axis=0))

    sns.set(font_scale=0.5)
    sns.heatmap(cm_counts, linewidths=1, annot=True, fmt="g")
    plt.savefig(f"{result_dir}/heat_map_{k+1}.png", dpi=300)
    plt.clf()


def tr_val_split(K, X_tr, Y_tr):
    if K < 2:
        K = 2
    kfold = KFold(n_splits=K, shuffle=True)
    tr_val_pairs = kfold.split(X_tr, Y_tr)

    return tr_val_pairs


def regression_plots(Y_expert, Y_pred, abs_error, result_dir, iter):
    sns.set_theme(style="dark")

    maximum_val = max([max(Y_expert), max(Y_pred)])

    # pred vs expert
    pred_df = {"expert": Y_expert, "pred": Y_pred}
    sns.scatterplot(x=Y_expert, y=Y_pred, s=5, color=".15")
    # sns.histplot(x=Y_expert, y=Y_pred, bins=50, pthresh=.1, cmap="mako")
    plt.title(f"Prediction VS Expert (Fold #: {iter+1})")
    plt.ylabel("Predcited Value")
    plt.xlabel("Expert Value")
    sns.kdeplot(data=pred_df, x="expert", y="pred", color="red")
    xpoints = ypoints = plt.xlim(0, maximum_val + maximum_val / 10)
    plt.plot(
        xpoints, ypoints, linestyle="--", color="k", lw=3, scalex=False, scaley=False
    )
    plt.axis("square")
    plt.savefig(f"{result_dir}/pred_expert_{iter+1}.png")
    plt.clf()

    # absolute errors
    plt.scatter(x=Y_expert, y=abs_error, s=5, color=".15")
    # sns.histplot(x=Y_expert, y=abs_error, bins=50, pthresh=.1, cmap="mako")
    plt.title(f"Absolute Errors (Fold #: {iter+1})")
    plt.ylabel("Absolute Error")
    plt.xlabel("Expert Value")
    err_df = {"expert": Y_expert, "error": abs_error}
    sns.kdeplot(data=err_df, x="expert", y="error", color="red")
    plt.savefig(f"{result_dir}/abs_errs_{iter+1}.png")
    plt.clf()


def CNN_stack_shape(CNN_stacks):
    if type(CNN_stacks) != np.ndarray:
        return None, None, None, None

    size_2d = CNN_stacks.shape[1]
    num_layers = CNN_stacks.shape[3]
    height = 4
    if size_2d > 8:
        print("2D dimension too big", file=sys.stderr)
    if num_layers > height:
        height = 8
    if num_layers > 8:
        print("Number of layers too big", file=sys.stderr)

    padding_2d = (8 - size_2d) / 2
    padding_height = (height - num_layers) / 2

    return size_2d, num_layers, padding_2d, padding_height
