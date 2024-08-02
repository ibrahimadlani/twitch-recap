"""
This file is used to define the configuration of the api app.
"""

from django.apps import AppConfig


class ApiConfig(AppConfig):
    """
    This class is used to define the configuration of the api app.
    """

    default_auto_field = "django.db.models.BigAutoField"
    name = "api"
