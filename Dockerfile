# Use latest Ubuntu
FROM ubuntu:focal

# Update base
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

# Install Setup.py scripts
COPY . .
RUN python3 -m pip install .

# User defined pixel (x, y)
# CMD [ "python3", "/scripts/pixel_select.py", "250", "260" ]
# CMD [ "", "" ] # shell scripts
# CMD [ "", "" ] # touch assets folder


# Prediction process
# Need new config files
# Transfer models to docker branch
# Output image script 

# docker run -v "C:/Users/omark/Documents/Spring 2022/GEOG 422/data:/data" --tmpfs /tmp:exec -t -i sea-ice-sar 

# python3 /scripts/pixel_select.py 250 250

# /streamline.sh 

# https://stackoverflow.com/questions/70117550/cannot-load-pb-file-input-model-savedmodel-format-load-failure-userobject