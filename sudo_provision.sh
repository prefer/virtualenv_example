#!/usr/bin/env bash

# Install node and bower
curl -sL https://deb.nodesource.com/setup | sudo bash -
apt-get install -y nodejs
npm install -g bower

# Install pip, virtualenv and virtualenvwrapper
easy_install -q pip
pip install -q virtualenv virtualenvwrapper