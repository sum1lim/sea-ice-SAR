#!/bin/bash

curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-MacOSX-arm64.sh" --output ./Miniforge3-MacOSX-arm64.sh
chmod +x ./Miniforge3-MacOSX-arm64.sh
sh ./Miniforge3-MacOSX-arm64.sh
source ~/miniforge3/bin/activate
rm ./Miniforge3-MacOSX-arm64.sh

python3 -m pip install --upgrade pip

pip uninstall tensorflow-macos
pip uninstall tensorflow-metal
conda install -c apple tensorflow-deps --force-reinstall

pip install -r M1_requirements.txt
pip install -e .