import os
def test_a():
    assert str(os.environ['GITHUB_REF_NAME']) == "staging-4.5"