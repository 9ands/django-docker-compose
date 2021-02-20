#!/bin/sh

python manage.py collectstatic --no-input

gunicorn django_app.wsgi:application --bind 0.0.0.0:8000