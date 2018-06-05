#!/bin/bash

set -xeu

curl https://gist.githubusercontent.com/iganari/d176d7b59561a1b4b71c73e401eee9b8/raw/df0c0c59ef78cc18e0ce94236c883c3d7ed7856f/init-centos7.sh > /tmp/init-centos7.sh
sh /tmp/init-centos7.sh

install_ansible()
{
  ### install ansible in Python2
  asb_ver='2.5.4.0'
  pip install --upgrade pip
  pip install ansible==${asb_ver}
}

install_ansible
