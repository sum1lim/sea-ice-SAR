curl https://raw.githubusercontent.com/mwidjaja1/DSOnMacARM/main/environment.yml --output ./environment.yml
conda env remove -n conda-venv
conda env create --file=./environment.yml --name=conda-venv
source ~/miniforge3/etc/profile.d/conda.sh
conda activate conda-venv
pip install scipy --index-url=https://pypi.anaconda.org/scipy-wheels-nightly/simple
python -m pip install --no-use-pep517 scikit-learn"==1.0.0"
pip install --upgrade --force --no-dependencies https://github.com/apple/tensorflow_macos/releases/download/v0.1alpha3/tensorflow_macos-0.1a3-cp38-cp38-macosx_11_0_arm64.whl https://github.com/apple/tensorflow_macos/releases/download/v0.1alpha3/tensorflow_addons_macos-0.1a3-cp38-cp38-macosx_11_0_arm64.whl
pip install -r ML_requirements.txt
# python -m venv venv
# source venv/bin/activate
pip install -r requirements.txt