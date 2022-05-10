# Cloning and initializing the repos

This chapter explains how to create a new clone and initialize 
Git Flow.

## Cloning the Repos

You can clone the repos using ``gh`` or any other methods.

```shell
⚡ ⇒  gh repo clone lbrack/git-flow-poc
Cloning into 'git-flow-poc'...
remote: Enumerating objects: 55, done.
remote: Counting objects: 100% (55/55), done.
remote: Compressing objects: 100% (45/45), done.
remote: Total 55 (delta 15), reused 42 (delta 8), pack-reused 0
Receiving objects: 100% (55/55), 154.30 KiB | 908.00 KiB/s, done.
Resolving deltas: 100% (15/15), done.

```

## Initialize Git Flow

GitFlow is pre-configured in the repos. Simply run this command

```shell
(tempo-test):temp|main⚡ ⇒  cd git-flow-poc
(tempo-test):git-flow-poc|develop ⇒  make gf-init      
Setting default config
git config --local include.path ../.gf-config
initializing git flow with defaults
git flow init -d
Using default branch names.

Which branch should be used for bringing forth production releases?
   - develop
Branch name for production releases: [main] 
done!

```
