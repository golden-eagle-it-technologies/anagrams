#!/bin/bash
echo "$(date) -- pre-build process started."
find ./ -name '*.pyc'
echo "$(date) -- pyc files removed."
find ./ -name '*.pyc' -delete
python manage.py makemigrations anagrams
python manage.py migrate
