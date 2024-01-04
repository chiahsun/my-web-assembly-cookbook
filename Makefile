ROOT=.

all: build view
-include $(ROOT)/asciidoc.mk


update-gitignore:
	cat Mine.gitignore > .gitignore
	echo "\n\n# Rust gitignore" >> .gitignore
	cat Rust.gitignore >> .gitignore
	echo "\n\n# Python gitignore" >> .gitignore
	cat Python.gitignore >> .gitignore
