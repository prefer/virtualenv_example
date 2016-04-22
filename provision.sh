#!/usr/bin/env bash

# Create virtualenv and configure virtualenvwrapper
source /usr/local/bin/virtualenvwrapper.sh
mkvirtualenv todo-django
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.bashrc

if [[ -z "$PROJECT_DIR" ]]; then
    echo "ERROR: PROJECT_DIR env is empty"
    exit 1
fi

# Install python requirements and run migrations
cd "$PROJECT_DIR"/todomvc-django
pip install -r REQUIREMENTS
python manage.py migrate --run-syncd

# Install js requirements
cd "$PROJECT_DIR"/todomvc-backbone
bower install