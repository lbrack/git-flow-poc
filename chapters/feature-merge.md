# Merge Requests (Features)

Original git-flow wasn't meant to work with a system like GitHub or GitLab. 
Therefore, it is not possible to create a merge request via the gitflow command,
so we will try the following:

1. Create a pull request using ``gh pr create``
2. approve the PR on GitHub
3. delete the local feature branch

## Creating the Merge Request

```shell
(tempo-test):git-flow-poc|feature/initial-readme ⇒  gh pr create    

Creating pull request for feature/initial-readme into develop in lbrack/git-flow-poc

? Title feature/initial readme
? Body <Received>
? What's next?  [Use arrows to move, type to filter]
> Submit
  Continue in browser
  Add metadata
  Cancel

```

## Merging the Feature 

---

**WARNING**

Git Flow normally requires that you finish the feature by calling ``git flow feature finish <feature>``
This normnally performs a merge to ``develop`` in the local repos, however, we do not want to do this 
since the merge is done via GitHub (either GUI or gh command)

Therefore, **DO NOT** use ``git flow feature finish <feature>`` but follow the instruction 
below. 

---

Once the merge request has been approved, merge it via command line ``gh pr merge --squash --delete-branch``

```shell
(tempo-test):git-flow-poc|feature/refine-feature ⇒  gh pr merge --squash --delete-branch
✓ Squashed and merged pull request #3 (adding warning)
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 3 (delta 1), reused 2 (delta 1), pack-reused 0
Unpacking objects: 100% (3/3), 831 bytes | 831.00 KiB/s, done.
From github.com:lbrack/git-flow-poc
 * branch            develop    -> FETCH_HEAD
   af115ef..44c03e4  develop    -> origin/develop
Updating af115ef..44c03e4
Fast-forward
 README.md | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)
✓ Deleted branch feature/refine-feature and switched to branch develop
```



instead clean up the local feature branch ``git pull --all --prune``

```shell
(tempo-test):git-flow-poc|develop ⇒  git pull --all --prune
Fetching origin
From github.com:lbrack/git-flow-poc
 - [deleted]         (none)     -> origin/feature/refine-feature
Already up to date.
git flow feature list               
No feature branches exist.

You can start a new feature branch:

    git flow feature start <name> [<base>]

```
