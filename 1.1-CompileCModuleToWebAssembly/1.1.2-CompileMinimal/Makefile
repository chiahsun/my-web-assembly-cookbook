APP=hello2
TARGETS=hello2.html hello2.js hello2.wasm shell_minimal.html

all: compile

compile: hello2.html

hello2.html: shell_minimal.html
	emcc -o hello2.html hello2.c -O3 --shell-file shell_minimal.html

shell_minimal.html:
	curl -LO https://github.com/emscripten-core/emscripten/raw/main/src/shell_minimal.html

start-http:
	docker build -t my-apache2 .
	docker run -dit --name $(APP) -p 8080:80 my-apache2

stop-http:
	docker stop $(APP)
	docker rm $(APP)

clean:
	rm -f $(TARGETS)
