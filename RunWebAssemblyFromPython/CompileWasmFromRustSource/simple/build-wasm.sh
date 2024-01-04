#!/usr/bin/env bash
docker run -it --rm --name to-compile-rust -v "$PWD":/usr/src/myapp -w /usr/src/myapp my-rust-compiler-raw cargo build --release --target wasm32-unknown-unknown
