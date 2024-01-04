ROOT=.

all: build view update-gitignore
-include $(ROOT)/asciidoc.mk
-include gitignore.mk

clean: clean-gitignore
