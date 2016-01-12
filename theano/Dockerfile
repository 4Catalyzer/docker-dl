FROM 4catalyzer/ipython

ENV PATH=/usr/local/cuda/bin:$PATH \
    LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH \
    CUDA_ROOT=/usr/local/cuda/bin

RUN pip --no-cache-dir install \
        https://github.com/Theano/Theano/archive/master.zip \
&&  echo "[global]\ndevice=gpu\nfloatX=float32\n[nvcc]\nfastmath=True" > \
        /root/.theanorc
