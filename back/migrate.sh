#!/bin/bash

# /py/bin/python manage.py collectstatic --noinput

/py/bin/python manage.py makemigrations
/py/bin/python manage.py migrate --noinput
/py/bin/python manage.py createsuperuser --username $DJANGO_SUPERUSER_USERNAME --email $DJANGO_SUPERUSER_EMAIL --noinput || true
/py/bin/python manage.py shell -c "from django.contrib.auth import get_user_model; User = get_user_model(); user = User.objects.get(username='$DJANGO_SUPERUSER_USERNAME'); user.set_password('$DJANGO_SUPERUSER_PASSWORD'); user.save()"