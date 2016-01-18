#!/bin/bash

ls -al ~/docker/

if [[ -e ~/docker/ipython.tar ]]; then docker load -i ~/docker/ipython.tar; fi
if [[ -e ~/docker/theano.tar ]]; then docker load -i ~/docker/theano.tar; fi

if [[ -e ~/docker/lasagne.tar ]]; then docker load -i ~/docker/lasagne.tar; fi
if [[ -e ~/docker/nolearn.tar ]]; then docker load -i ~/docker/nolearn.tar; fi

if [[ -e ~/docker/keras-theano.tar ]]; then docker load -i ~/docker/keras-theano.tar; fi
if [[ -e ~/docker/keras-tf.tar ]]; then docker load -i ~/docker/keras-tf.tar; fi
