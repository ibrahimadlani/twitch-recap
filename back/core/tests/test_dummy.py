import pytest

@pytest.mark.django_db
def test_dummy():
    assert 1 + 1 == 2
