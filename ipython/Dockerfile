FROM nvidia/cuda:cudnn

RUN apt-get update \
&&  apt-get install -y \
        curl \
        libfreetype6-dev \
        libpng12-dev \
        libzmq3-dev \
        pkg-config \
        python-numpy \
        python-pip \
        python-scipy \
&&  apt-get clean \
&&  rm -rf /var/lib/apt/lists/*

RUN curl -O https://bootstrap.pypa.io/get-pip.py \
&&  python get-pip.py \
&&  rm get-pip.py

RUN pip --no-cache-dir install \
        ipykernel \
        jupyter \
        matplotlib \
&&  python -m ipykernel.kernelspec

COPY run_jupyter.sh /

EXPOSE 8888
WORKDIR "/root"
CMD ["/bin/bash"]
