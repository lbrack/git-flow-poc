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

# This variable contains 0 if git flow was initialized
GF_INITIALIZED := $(shell git config --get gitflow.branch.master > /dev/null 2>&1; echo $$?)

gf-init: ## Initialize the git repos with the appropriate structure
ifeq ($(GF_INITIALIZED), 0)
	@echo git flow has been initialized already!! && exit 1
endif
# 	@echo setting master to main
# 	echo git config gitflow.branch.master main
#
# 	@echo setting develop branch to 'develop'
# 	echo git config gitflow.branch.develop develop
#
# 	@echo feature branches will start with 'feature/'
# 	echo git config gitflow.prefix.feature feature/
#
# 	@echo bugfix branches will start with 'bugfix/'
# 	echo git config gitflow.prefix.bugfix bugfix/
#
# 	@echo release branches will start with 'release/'
# 	echo git config gitflow.prefix.release release/
#
# 	@echo hotfix branches will start with 'hotfix/'
# 	echo git config gitflow.prefix.hotfix hotfix/
#
# 	@echo git config gitflow.prefix.versiontag
#
# 	@echo install hooks locally
# 	echo git config gitflow.path.hooks /Users/lbrack/temp/git-flow-poc/.git/hooks

	@echo done!
