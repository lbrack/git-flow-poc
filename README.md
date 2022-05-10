# Git-flow Proof of Concept.

This is at the very beginning. We initialize a blank repos as follow:

## Initialization

```shell
git-flow-poc|main ⇒  git flow init        
No branches exist yet. Base branches must be created now.
Branch name for production releases: [master] main
Branch name for "next release" development: [develop] 
How to name your supporting branch prefixes?
Feature branches? [feature/] 
Bugfix branches? [bugfix/] 
Release branches? [release/] 
Hotfix branches? [hotfix/] 
Support branches? [support/] 
Version tag prefix? [] 
Hooks and filters directory? [/Users/lbrack/github/lbrack/git-flow-poc/.git/hooks] 
```

And we started with 2 branches:

* develop - is based of main and contains the current developement effort. 
* main - main is where all the releases end up being merge

If you haven't done so, create the repository on GitHub (for Tempo, it should be 
``--private``)

```shell
gh repo create lbrack/git-flow-poc --public --source . --push
✓ Created repository lbrack/git-flow-poc on GitHub
✓ Added remote git@github.com:lbrack/git-flow-poc.git
✓ Pushed commits to git@github.com:lbrack/git-flow-poc.git
```

Then push the develop and main branches

```shell
git-flow-poc|develop ⇒  git push -u origin develop                      
remote: Create a pull request for 'develop' on GitHub by visiting:
remote:      https://github.com/lbrack/git-flow-poc/pull/new/develop
remote: 
To github.com:lbrack/git-flow-poc.git
 * [new branch]      develop -> develop
Branch 'develop' set up to track remote branch 'develop' from 'origin'.
git-flow-poc|develop ⇒  git checkout main         
Switched to branch 'main'
git-flow-poc|main⚡ ⇒  git push -u origin main   
Total 0 (delta 0), reused 0 (delta 0), pack-reused 0
remote: 
remote: Create a pull request for 'main' on GitHub by visiting:
remote:      https://github.com/lbrack/git-flow-poc/pull/new/main
remote: 
To github.com:lbrack/git-flow-poc.git
 * [new branch]      main -> main
Branch 'main' set up to track remote branch 'main' from 'origin'.
```

Finally, set the branches in GitHub

![foo](./images/gh-branch-settings.png)

## Creating a feature

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

## Creating a merge request

Original git-flow wasn't meant to work with a system like GitHub or GitLab. 
Therefore, it is not possible to create a merge request via the gitflow command,
so we will try the following:

1. Create a pull request using ``gh pr create``
2. approve the PR on GitHub
3. merge the PR using ``git flow feature finish`` which will merge to develop.

### Initializing Merge Request

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

Once the merge request has been approved, merge it via command line ``gh pr merge``
since the merge has been done, do not use ``git flow feature finish <feature>``



