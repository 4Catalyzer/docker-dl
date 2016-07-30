FROM 4catalyzer/tensorflow:latest-devel-gpu-aws

RUN pip --no-cache-dir install -U --no-deps \
        git+https://github.com/fchollet/keras.git#egg=Keras \
        scipy \
        pyyaml \
        h5py
&&  mkdir .keras \
&&  echo "{\"backend\": \"tensorflow\"}" > .keras/keras.json
