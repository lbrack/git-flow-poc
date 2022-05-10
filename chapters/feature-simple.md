# Creating a feature (simple)

We now create a feature (this readme document)

```shell
git-flow-poc|develop⚡ ⇒  git flow feature start initial-readme               
Switched to a new branch 'feature/initial-readme'

Summary of actions:
- A new branch 'feature/initial-readme' was created, based on 'develop'
- You are now on branch 'feature/initial-readme'

Now, start committing on your feature. When done, use:

     git flow feature finish initial-readme

git-flow-poc|feature/initial-readme⚡
```


## Publishing the feature branch


```shell
git-flow-poc|feature/initial-readme ⇒  git flow publish                    
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 12 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 553 bytes | 553.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To github.com:lbrack/git-flow-poc.git
   8c0a820..8a28861  feature/initial-readme -> feature/initial-readme
Branch 'feature/initial-readme' set up to track remote branch 'feature/initial-readme' from 'origin'.
Already on 'feature/initial-readme'
Your branch is up to date with 'origin/feature/initial-readme'.

Summary of actions:
- The remote branch 'feature/initial-readme' was created or updated
- The local branch 'feature/initial-readme' was configured to track the remote branch
- You are now on branch 'feature/initial-readme'

```

## Merging

See [Merging Feature](./feature-merge.md) for instructions