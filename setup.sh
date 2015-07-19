#!/bin/bash

echo "setting up env"

# install git
sudo apt-get install git nodejs-legacy -y

# install nodejs
sudo apt-get install nodejs-legacy -y

bash -l ./install_rvm.sh

source ~/.rvm/scripts/rvm

rvm list

gem install bundler --no-ri --no-rdoc

bundle install
