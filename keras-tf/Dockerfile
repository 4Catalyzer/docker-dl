FROM b.gcr.io/tensorflow/tensorflow:latest-gpu

RUN pip install --no-cache-dir keras \
&&  mkdir .keras \
&&  echo "{\"backend\": \"tensorflow\"}" > .keras/keras.json
