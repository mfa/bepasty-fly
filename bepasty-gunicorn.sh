#!/bin/sh

NAME="bepasty"
HOME=/app
NUM_WORKERS=2
export BEPASTY_CONFIG=$HOME/bepasty.conf

exec gunicorn bepasty.wsgi \
  --name $NAME \
  --workers $NUM_WORKERS \
  -b 0.0.0.0:8000 \
  -k gevent
