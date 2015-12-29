FROM 4catalyzer/tensorflow:latest-devel-gpu-aws

RUN apt-get update \
&&  apt-get install -y --no-install-recommends \
        python-scipy \
        python-yaml \
&&  apt-get clean \
&&  rm -rf /var/lib/apt/lists/*

RUN pip --no-cache-dir install --no-deps \
        git+git://github.com/fchollet/keras.git \
&&  mkdir .keras \
&&  echo "{\"backend\": \"tensorflow\"}" > .keras/keras.json
