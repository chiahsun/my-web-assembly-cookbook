#!/usr/bin/env bash
docker run -it --name to-compile-rust -v "$PWD":/usr/src/myapp -w /usr/src/myapp my-rust-web-compiler wasm-pack build --target web
