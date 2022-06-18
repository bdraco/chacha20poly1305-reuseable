from chacha20poly1305_reuseable.main import add


def test_add():
    assert add(1, 1) == 2
