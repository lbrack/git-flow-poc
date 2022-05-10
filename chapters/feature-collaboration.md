# Collaborating on a Feature

This is based on the [Simple Feature Scenario](./feature-simple.md) and it assumes 
that the primary owner of the feature. 

After you published the branch, you notify you colleague that the branch 
is ready to be pulled. 

---

**NOTE**

This assumes that the user has already a clone on their local machine. See [cloning](./cloning.md)
for details.

---

If the repos was already cloned and the feature branch is new, the user should not see that 
feature in his repos

```shell
git-flow-poc|develop ⇒  git flow feature list
No feature branches exist.
```

To pull that feature and start working on it, simply do 

```shell
git-flow-poc|develop ⇒  git flow feature track feature-collaboration
Branch 'feature/feature-collaboration' set up to track remote branch 'feature/feature-collaboration' from 'origin'.
Switched to a new branch 'feature/feature-collaboration'

Summary of actions:
- A new remote tracking branch 'feature/feature-collaboration' was created
- You are now on branch 'feature/feature-collaboration'

git-flow-poc|feature/feature-collaboration ⇒ 
```

you are now working on that feature branch.

## Pushing Changes

The user can then commit his changes using the regular ``git commit`` command. 

```shell
git-flow-poc|feature/feature-collaboration ⇒  git commit -am "added one new chapter"                            
On branch feature/feature-collaboration
Your branch is ahead of 'origin/feature/feature-collaboration' by 1 commit.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean

```

and finally publish his changes

```shell
git-flow-poc|feature/feature-collaboration ⇒  git flow feature publish                    
Enumerating objects: 10, done.
Counting objects: 100% (10/10), done.
Delta compression using up to 12 threads
Compressing objects: 100% (6/6), done.
Writing objects: 100% (6/6), 1.66 KiB | 1.66 MiB/s, done.
Total 6 (delta 3), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (3/3), completed with 3 local objects.
To github.com:lbrack/git-flow-poc.git
   793dcb3..753c3f4  feature/feature-collaboration -> feature/feature-collaboration
Branch 'feature/feature-collaboration' set up to track remote branch 'feature/feature-collaboration' from 'origin'.
Already on 'feature/feature-collaboration'
Your branch is up to date with 'origin/feature/feature-collaboration'.

Summary of actions:
- The remote branch 'feature/feature-collaboration' was created or updated
- The local branch 'feature/feature-collaboration' was configured to track the remote branch
- You are now on branch 'feature/feature-collaboration'
```

## Pulling their changes

Once they have pushed their changes, simply pull them in

```shell
git-flow-poc|feature/feature-collaboration ⇒  git pull                
remote: Enumerating objects: 10, done.
remote: Counting objects: 100% (10/10), done.
remote: Compressing objects: 100% (3/3), done.
Unpacking objects: 100% (6/6), 1.64 KiB | 240.00 KiB/s, done.
remote: Total 6 (delta 3), reused 6 (delta 3), pack-reused 0
From github.com:lbrack/git-flow-poc
   793dcb3..753c3f4  feature/feature-collaboration -> origin/feature/feature-collaboration
Updating 793dcb3..753c3f4
Fast-forward
 README.md                         |  6 +++++-
 chapters/feature-collaboration.md | 38 +++++++++++++++++++++++++++++++++++++-
 chapters/feature-switch.md        | 72 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 114 insertions(+), 2 deletions(-)
 create mode 100644 chapters/feature-switch.md

```




## Merging

See [Merging Feature](./feature-merge.md) for instructions