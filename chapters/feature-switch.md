# Switching Feature Branch

Lets assume that you are on the ``feature/feature-collaboration`` branch
and need to work on someting else. After checking in your work (or stashing it)

In this case, develop moved ahead

```shell
git-flow-poc|feature/feature-collaboration ⇒  git flow  feature start my-new-task         
Branches 'develop' and 'origin/develop' have diverged.
Fatal: And branch 'develop' may be fast-forwarded.
```

So we simply update

```shell
git-flow-poc|feature/feature-collaboration ⇒  git checkout develop
Switched to branch 'develop'
Your branch is behind 'origin/develop' by 1 commit, and can be fast-forwarded.
  (use "git pull" to update your local branch)
  
git-flow-poc|develop ⇒  git pull --all --prune             
Fetching origin
Updating 52d9f21..ea9aafc
Fast-forward
 README.md | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
  
```

Then create the new task

```shell
git-flow-poc|develop ⇒  git flow  feature start my-new-task
Switched to a new branch 'feature/my-new-task'

Summary of actions:
- A new branch 'feature/my-new-task' was created, based on 'develop'
- You are now on branch 'feature/my-new-task'

Now, start committing on your feature. When done, use:

     git flow feature finish my-new-task

git-flow-poc|feature/my-new-task ⇒
```

## listing the Features

```shell
git-flow-poc|feature/my-new-task ⇒  git flow  feature list              
  feature-collaboration
* my-new-task
```

## Switching back and forth

```shell
git-flow-poc|feature/my-new-task ⇒  git flow  feature checkout feature-collaboration
Switched to branch 'feature/feature-collaboration'
Your branch is up to date with 'origin/feature/feature-collaboration'.

git-flow-poc|feature/feature-collaboration ⇒  git flow  feature checkout my-new-task                    
Switched to branch 'feature/my-new-task'

git-flow-poc|feature/my-new-task ⇒  git flow  feature checkout feature-collaboration
Switched to branch 'feature/feature-collaboration'
Your branch is up to date with 'origin/feature/feature-collaboration'.
```



