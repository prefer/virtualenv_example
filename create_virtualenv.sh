#!/usr/bin/env bash

source /usr/local/bin/virtualenvwrapper.sh
mkvirtualenv django_example
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.bashrc

cd /vagrant/django_example
pip install -r REQUIREMENTS
python manage.py migrate