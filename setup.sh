#!/bin/bash

echo "setting up env"

# install git
sudo apt-get install git -y

bash -l ./install_rvm.sh

sudo gem install bundler --no-ri --no-rdoc

bundle install
