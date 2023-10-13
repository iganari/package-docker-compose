#!/bin/bash

set -x

vb_name='pkg-docker-compose'

vagrant destroy -f
vagrant up ${vb_name}
echo "vagrant ssh ${vb_name}"
