# TODO: Multi-stage
# https://pythonspeed.com/articles/faster-multi-stage-builds/

# Use latest Ubuntu
FROM ubuntu:focal

# Update base container
RUN apt update

# Set timezone
ENV TZ 'CA'
RUN echo $TZ > /etc/timezone && \
    apt-get install -y tzdata && \
    rm /etc/localtime && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata && \
    apt-get clean

# Install build essential, python, pip, gdal and curl
RUN apt update && apt -y install \
    # Install gcc, g++, binutils, make, etc.
    build-essential \
    # Install Python3
    python3 \
    python3-pip \ 
    python-is-python3 \
    # Install GDAL dependencies
    gdal-bin \
    libgdal-dev \
    libproj-dev \
    # Install curl inside docker container
    curl 

# Ensure locales configured correctly
RUN apt update && apt -y install locales
RUN locale-gen en_CA.UTF-8
ENV LC_ALL='en_CA.utf8'

# Update C environmental variables to find GDAL
ENV CPLUS_INCLUDE_PATH=/usr/include/gdal
ENV C_INCLUDE_PATH=/usr/include/gdal

# Python Path
ENV PYTHONPATH=/usr/bin/python3

# Set python aliases for python3
RUN echo 'alias python=python3' >> ~/.bashrc \
    'alias pip=pip3' >> ~/.bashrc \
    'alias alias_name=command' >> ~/.bashrc

# Upgrade and install pip requirements
RUN pip install --upgrade pip \
    --upgrade setuptools \
    --upgrade wheel

# Install the requirements in the WORKDIR
COPY requirements.txt .
RUN python3 -m pip install -r requirements.txt

# Ensure script files are UNIX friendly
# ADD TO README python3 ./scripts/EOL_converter.py

# Install Setup.py scripts
COPY . .
RUN python3 -m pip install .

# Copy files into docker image
WORKDIR /app
COPY . /app

# Run scripts and save outputs to local machine
# TODO
# https://stackoverflow.com/questions/44876778/how-can-i-use-a-local-file-on-container
