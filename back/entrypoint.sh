#!/bin/bash
APP_PORT=${PORT:-8000}
cd /app/
/py/bin/gunicorn --worker-tmp-dir /dev/shm api.wsgi:application
--bind "0.0.0.0:${APP_PORT}"