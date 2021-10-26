# Sea Ice Remote Sensing

**Author**: [Sangwon Lim](https://github.com/sum1lim)

## Getting Started

### Install the Package in a Python Virtual Environment

To avoid conflicts, the first step is to isolate this project by creating a Python virtual environment called ```venv```. The virtual environment will have it's own python interpreter, dependencies, and scripts. Commands should only be entered in a terminal that has ```venv``` active. 

#### Apple Silicon (M1)

```
sh ./M1_install.sh
conda activate SAR-venv
```

#### Linux/Mac

```
python -m venv venv
source venv/bin/activate
pip install .
pip install -r requirements.txt
pip install tensorflow
```

#### Windows

```
python -m venv venv
venv/Scripts/activate
pip install .
pip install -r requirements.txt
pip install tensorflow
```