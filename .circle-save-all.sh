#!/bin/sh

mkdir -p ~/docker

ls -al ~/docker/

docker save 4catalyzer/ipython > ~/docker/ipython.tar
docker save 4catalyzer/theano > ~/docker/theano.tar

docker save 4catalyzer/lasagne > ~/docker/lasagne.tar
docker save 4catalyzer/nolearn > ~/docker/nolearn.tar

docker save 4catalyzer/keras:theano > ~/docker/keras-theano.tar
docker save 4catalyzer/keras:tf > ~/docker/keras-tf.tar

ls -al ~/docker/
