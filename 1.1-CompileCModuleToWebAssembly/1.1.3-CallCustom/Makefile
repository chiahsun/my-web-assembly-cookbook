APP=hello3
TARGETS=hello3.html hello3.js hello3.wasm shell_minimal.html

all: compile

compile: hello3.html

hello3.html: shell_minimal.html hello3.c
	emcc -o hello3.html hello3.c -O3 --shell-file shell_minimal.html -s NO_EXIT_RUNTIME=1 -s "EXPORTED_RUNTIME_METHODS=['ccall','cwrap']"
	# https://api.html-tidy.org/tidy/tidylib_api_5.6.0/tidy_config.html
	tidy -config config.txt -o hello3.html hello3.html || true # drop error for tidy
	bash sed1.sh
	bash sed2.sh
	cat sqrt.js >> hello3.js

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
