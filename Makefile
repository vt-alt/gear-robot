
check:
	git grep -l '^#!/bin/bash' | xargs -t shellcheck $(VIMRUNTIME:/%=-f gcc) -x

install:
	git ls-files | xargs grep -l '^#!/bin/bash' | xargs -i ln -vrsf {} $(HOME)/bin/{}
