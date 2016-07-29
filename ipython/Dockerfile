FROM nvidia/cuda:7.5-cudnn4-devel

RUN apt-get update \
&&  apt-get install -y --no-install-recommends \
        ca-certificates \
        curl \
        gfortran \
        git \
        libfreetype6-dev \
        libjpeg-dev \
        liblapack-dev \
        libopenblas-dev \
        libpng12-dev \
        libzmq3-dev \
        pkg-config \
        python \
        python-dev \
&&  apt-get clean \
&&  rm -rf /var/lib/apt/lists/*

RUN curl -O https://bootstrap.pypa.io/get-pip.py \
&&  python get-pip.py \
&&  rm get-pip.py

# Use two set pip install for scikit-learn due to package not using install_requires
# See: http://stackoverflow.com/questions/33806443/installing-scikit-learn-and-scipy-on-elastic-beanstalk-with-pip-and-requirements
RUN pip --no-cache-dir install \
        ipykernel \
        jupyter \
        matplotlib \
        numpy \
        Pillow \
        scipy \
&&  pip --no-cache-dir install \
        scikit-learn \
&&  python -m ipykernel.kernelspec

COPY run_jupyter.sh /

EXPOSE 8888
WORKDIR "/root"
CMD ["/bin/bash"]
