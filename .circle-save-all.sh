#!/bin/sh

set -v

mkdir -p ~/docker

rm ~/docker/*.tar

docker save 4catalyzer/ipython 4catalyzer/theano 4catalyzer/lasagne 4catalyzer/nolearn 4catalyzer/keras:theano 4catalyzer/keras:tf > ~/docker/image.tar

ls -al ~/docker/
