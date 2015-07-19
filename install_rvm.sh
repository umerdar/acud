#!/bin/bash

if which rvm >/dev/null; then
  echo "RVM already installed"
else
  gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
  sudo apt-get install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev -y
  curl -L https://get.rvm.io | bash -s stable
  source ~/.rvm/scripts/rvm
  rvm install 2.2.2
  rvm use 2.2.2 --default
  ruby -v
fi
