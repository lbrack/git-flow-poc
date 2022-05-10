# Git-flow Proof of Concept.

This is at the very beginning. We initialize a blank repos as follow:

## Initialization

```shell
(tempo-test):git-flow-poc|main ⇒  git flow init        
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

## Creating a feature

We now create a feature (this readme document)

```shell
(tempo-test):git-flow-poc|develop⚡ ⇒  git flow feature start initial-readme               
Switched to a new branch 'feature/initial-readme'

Summary of actions:
- A new branch 'feature/initial-readme' was created, based on 'develop'
- You are now on branch 'feature/initial-readme'

Now, start committing on your feature. When done, use:

     git flow feature finish initial-readme

(tempo-test):git-flow-poc|feature/initial-readme⚡
```

## Publishing the feature branch

First I need to create the remote repos on GitHub. Note that this step is not necessary
if the repos already exists

```shell
gh repo create lbrack/git-flow-poc --public --source . --push
✓ Created repository lbrack/git-flow-poc on GitHub
✓ Added remote git@github.com:lbrack/git-flow-poc.git
✓ Pushed commits to git@github.com:lbrack/git-flow-poc.git
```



