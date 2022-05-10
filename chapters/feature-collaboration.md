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

If the repos was already clone and the feature branch is new, the should not see that 
feature in their repos

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

## Merging

See [Merging Feature](./feature-merge.md) for instructions