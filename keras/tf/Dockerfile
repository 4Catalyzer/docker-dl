FROM 4catalyzer/tensorflow:latest-devel-gpu-aws

RUN pip --no-cache-dir install -U \
        scipy \
        pyyaml \
        h5py \
&&  pip --no-cache-dir install --no-deps \
        git+https://github.com/fchollet/keras.git#egg=Keras \
&&  mkdir .keras \
&&  echo "{\"backend\": \"tensorflow\"}" > .keras/keras.json
