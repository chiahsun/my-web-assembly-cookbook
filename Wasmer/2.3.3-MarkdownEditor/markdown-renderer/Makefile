
all: compile

download-gitignore:
	curl -L -o .gitignore https://github.com/github/gitignore/raw/main/Rust.gitignore

build-rust-compiler:
	docker build -t my-rust-wasm32-wasi-compiler .

compile:
	docker run -it --name to-compile-rust -v "$PWD":/usr/src/myapp -w /usr/src/myapp my-rust-wasm32-wasi-compiler cargo build --release --target=wasm32-wasi
	docker stop to-compile-rust
	docker rm to-compile-rust

# If you install cargo in your host machine
#     cargo build --release --target=wasm32-wasi
