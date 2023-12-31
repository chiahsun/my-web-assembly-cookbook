TARGETS=hello.html hello.js hello.wasm
APP=my-running-app

all: $(TARGETS)

echo:
	echo $(TARGETS)

$(TARGETS): hello.c
	emcc hello.c -o hello.html

clean:
	rm -f $(TARGETS)


start-http:
	docker build -t my-apache2 .
	docker run -dit --name $(APP) -p 8080:80 my-apache2

stop-http:
	docker stop $(APP)
	docker rm $(APP) 
