FROM nvidia/cuda:8.0-cudnn6-devel-ubuntu16.04

# The packages below are largely taken from the TensorFlow Dockerfile.
RUN apt-get update \
&&  apt-get install -y --no-install-recommends \
        build-essential \
        ca-certificates \
        curl \
        gfortran \
        git \
        less \
        libcurl3-dev \
        libfreetype6-dev \
        libjpeg-dev \
        liblapack-dev \
        libopenblas-dev \
        libpng12-dev \
        libzmq3-dev \
        pkg-config \
        python3 \
        python3-dev \
        rsync \
        software-properties-common \
        tzdata \
        unzip \
        vim \
        wget \
        zip \
        zlib1g-dev \
&&  apt-get clean \
&&  rm -rf /var/lib/apt/lists/*

# Use Python 3 instead of the older version.
RUN ln -fs /usr/bin/python3 /usr/bin/python

RUN curl -O https://bootstrap.pypa.io/get-pip.py \
&&  python get-pip.py \
&&  rm get-pip.py

# Need to set no-cache-dir in pip.conf for pipenv.
RUN mkdir ~/.pip \
&&  printf "[global]\nno-cache-dir = false\n" > ~/.pip/pip.conf

RUN pip install \
        dumb-init \
        pipenv

ENTRYPOINT ["dumb-init"]
