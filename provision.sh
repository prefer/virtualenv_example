#!/usr/bin/env bash

# Create virtualenv and configure virtualenvwrapper
source /usr/local/bin/virtualenvwrapper.sh
mkvirtualenv todo-django
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.bashrc

# Install python requirements and run migrations
cd /vagrant/todomvc-django-backbone/todomvc-django
pip install -r REQUIREMENTS
python manage.py migrate --run-syncd

# Install js requirements
cd /vagrant/todomvc-django-backbone/todomvc-backbone
bower install