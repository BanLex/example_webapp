#!/bin/sh
python manage.py
gunicorn routes:app -w 2 --threads 2 -b 0.0.0.0:5000
