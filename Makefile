.PHONY: gf-init help
.DEFAULT_GOAL := help

define PRINT_HELP_PYSCRIPT
import re, sys

for line in sys.stdin:
	match = re.match(r'^([a-zA-Z_-]+):.*?## (.*)$$', line)
	if match:
		target, help = match.groups()
		print("%-20s %s" % (target, help))
endef
export PRINT_HELP_PYSCRIPT

BROWSER := python -c "$$BROWSER_PYSCRIPT"

help:
	@echo Simple make file to control git flow
	@python -c "$$PRINT_HELP_PYSCRIPT" < $(MAKEFILE_LIST)
	@echo

gh-init: ## Initialize the git repos with the appropriate structure
	echo git config gitflow.branch.master main
	echo git config gitflow.branch.develop develop
	echo git config gitflow.prefix.feature feature/
	echo git config gitflow.prefix.bugfix bugfix/
	echo git config gitflow.prefix.release release/
	echo git config gitflow.prefix.hotfix hotfix/
	echo git config gitflow.prefix.versiontag
	echo git config gitflow.path.hooks /Users/lbrack/temp/git-flow-poc/.git/hooks

