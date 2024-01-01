TARGETS=add.wasm double.wasm logger.wasm global.wasm
APP=add-app

all: $(TARGETS)

start-http:
	docker run -dit --name $(APP) -p 8080:80 -v "$(PWD)":/usr/local/apache2/htdocs/ httpd:2.4

stop-http:
	docker stop $(APP)
	docker rm $(APP)

%.wasm: %.wat
	wat2wasm $< -o $@


