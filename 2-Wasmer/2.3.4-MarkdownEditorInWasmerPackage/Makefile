FROM=../2.3.3-MarkdownEditor

all: run

markdown-renderer: $(FROM)/markdown-renderer
	cp -r $< .

run: markdown-renderer
	npm install
	npm run dev
