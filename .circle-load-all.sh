#!/bin/bash

set -v

ls -al ~/docker/

if [[ -e ~/docker/image.tar ]]; then docker load -i ~/docker/image.tar; fi
