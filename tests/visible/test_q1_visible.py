from q1 import transform_string

def test_basic():
    assert transform_string("abc") == "Abc"

def test_mixed():
    assert transform_string("a1B") == "A1b"
