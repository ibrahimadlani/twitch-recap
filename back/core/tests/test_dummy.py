"""
Dummy test to check if pytest is working.
"""

import pytest


@pytest.mark.django_db
def test_dummy():
    """
    Dummy test to check if pytest is working.
    """
    assert 1 + 1 == 2
