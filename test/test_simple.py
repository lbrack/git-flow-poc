import os
def test_a():
    expected = "staging-4.7"
    print(f"{os.environ['GITHUB_REF_NAME']} expected {expected}")
    assert str(os.environ['GITHUB_REF_NAME']) == expected