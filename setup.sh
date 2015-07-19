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

rvm alias create acud ruby-2.2.2

echo RVM_PATH=$rvm_path > .env
echo RVM_WRAPPER=acud >> .env

sudo $rvm_path/wrappers/acud/bundle exec foreman export upstart /etc/init --app acud -u root -p 80
