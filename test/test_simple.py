import os
def test_a():
    expected = "staging-4.6"
    print(f"{os.environ['GITHUB_REF_NAME']} expected {expected}")
    assert str(os.environ['GITHUB_REF_NAME']) == expected