# https://hub.docker.com/_/rust
FROM rust:1.75.0

WORKDIR /usr/src/myapp

COPY . .

RUN cargo update
RUN cargo install wasm-pack