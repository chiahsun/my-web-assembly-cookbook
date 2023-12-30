TARGETS=hello.html hello.js hello.asm

all: $(TARGETS)

$(TARGETS): hello.c
	emcc hello.c -o hello.html

clean:
	rm -f $(TARGETS)


start-http:
	docker build -t my-apache2 .
	docker run -dit --name my-running-app -p 8080:80 my-apache2

stop-http:
	docker stop my-running-app
	docker rm my-running-app
