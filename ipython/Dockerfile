FROM nvidia/cuda:cudnn

RUN apt-get update \
&&  apt-get install -y --no-install-recommends \
        ca-certificates \
        curl \
        gfortran \
        libfreetype6-dev \
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

RUN pip --no-cache-dir install \
        ipykernel \
        jupyter \
        matplotlib \
        numpy \
        scikit-learn \
        scipy \
&&  python -m ipykernel.kernelspec

COPY run_jupyter.sh /

EXPOSE 8888
WORKDIR "/root"
CMD ["/bin/bash"]
