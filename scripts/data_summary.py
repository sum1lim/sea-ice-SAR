import pandas
import seaborn as sns
import matplotlib as mpl
import matplotlib.pyplot as plt

sns.set_theme(style="ticks")

# Initialize the figure with a logarithmic x axis
f, ax = plt.subplots(figsize=(7, 6))
ax.set_xscale("log")

# Load the example planets dataset
# planets = sns.load_dataset("planets")
rms_tr_df = pandas.read_csv(f"./data/rms_tr_data/aggr.csv", header=0)
rms_te_df = pandas.read_csv(f"./data/rms_te_data/aggr.csv", header=0)

rms_df = rms_tr_df.append(rms_te_df, sort=False).reset_index()
rms_df["mask"].replace(
    {-1: "nan", 0: "Land", 1: "FYI", 2: "FYI", 3: "MYI"}, inplace=True
)
rms_df = rms_df.drop(rms_df[rms_df["num_points"] < 50].index).reset_index()
print(rms_df)

thk_tr_df = pandas.read_csv(f"./data/thk_tr_data/aggr.csv", header=0)
thk_te_df = pandas.read_csv(f"./data/thk_te_data/aggr.csv", header=0)

thk_df = thk_tr_df.append(thk_te_df, sort=False).reset_index()
thk_df["mask"].replace(
    {-1: "nan", 0: "Land", 1: "FYI", 2: "FYI", 3: "MYI"}, inplace=True
)
thk_df = thk_df.drop(thk_df[thk_df["num_points"] < 10].index).reset_index()
print(thk_df)

f, ax = plt.subplots(figsize=(7, 5))
sns.despine(f)

sns.histplot(
    rms_df,
    x="label",
    hue="mask",
    multiple="stack",
    palette="light:m_r",
    edgecolor=".3",
    linewidth=0.5,
    log_scale=False,
    element="poly",
)
ax.xaxis.set_major_formatter(mpl.ticker.ScalarFormatter())
# ax.set_xticks([500, 1000, 2000, 5000, 10000])

plt.show()
