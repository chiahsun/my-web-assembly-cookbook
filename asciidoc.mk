
.PHONY: build view watch

build: $(ROOT)/dark.css
	asciidoctor -a stylesheet=$(ROOT)/dark.css -a highlightjsdir=$(ROOT)/highlight -v -t index.adoc

build-with-diagram:
	asciidoctor -a stylesheet=$(ROOT)/dark.css -r asciidoctor-diagram -v -t index.adoc

view:
	open index.html -a Safari
	
watch:
	$(ROOT)/watch_build.sh

download:

$(ROOT)/dark.css:
	cd $(ROOT) && curl -LO https://github.com/darshandsoni/asciidoctor-skins/raw/gh-pages/css/dark.css
