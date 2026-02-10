from q1 import transform_string

def test_upper():
    assert transform_string("AEIOU") == "AEIOU"

def test_lower():
    assert transform_string("bcdf") == "bcdf"

def test_symbols():
    assert transform_string("a@B#") == "A@b#"
