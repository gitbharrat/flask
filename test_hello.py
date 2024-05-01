from hello import app
import pytest


@pytest.fixture
def client():   # This acts as Server
    return app.test_client()


def test_pinger(client):    # This tests the server response
    response = client.get('/ping')
    assert response.status_code == 200
    assert response.json == {"MESSAGE": "Hi, I am Ping..."}