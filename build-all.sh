#!/bin/sh

docker build -t 4catalyzer/ipython ipython
docker build -t 4catalyzer/theano theano
docker build -t 4catalyzer/lasagne lasagne
docker build -t 4catalyzer/nolearn nolearn

docker build -t 4catalyzer/keras:theano keras/theano
docker build -t 4catalyzer/keras:tf keras/tf
docker tag -f 4catalyzer/keras:theano 4catalyzer/keras
