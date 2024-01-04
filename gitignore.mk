
DOWNLOADS=Rust.gitignore Python.gitignore Node.gitignore

.PHONY: update-gitignore

update-gitignore: .gitignore

.gitignore: Mine.gitignore $(DOWNLOADS)
	cat Mine.gitignore > .gitignore
	# https://stackoverflow.com/questions/1490949/how-to-write-loop-in-a-makefile
	$(foreach g, $(DOWNLOADS), echo "\n\n# From $(g)" >> .gitignore; echo "$(g)" >> .gitignore; cat $(g) >> .gitignore;)

%.gitignore:
	curl -LO https://github.com/github/gitignore/raw/main/$@

clean-gitignore:
	rm -f $(DOWNLOADS)