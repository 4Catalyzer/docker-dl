FROM 4catalyzer/ipython

RUN apt-get update \
&&  apt-get install -y --no-install-recommends \
        git \
        libopenblas-dev \
        python-nose \
&&  apt-get clean \
&&  rm -rf /var/lib/apt/lists/*

ENV PATH=/usr/local/cuda/bin:$PATH \
    LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH \
    CUDA_ROOT=/usr/local/cuda/bin

RUN pip --no-cache-dir install --no-deps \
        git+git://github.com/Theano/Theano.git \
&&  echo "[global]\ndevice=gpu\nfloatX=float32\n[nvcc]\nfastmath=True" > \
        /root/.theanorc
