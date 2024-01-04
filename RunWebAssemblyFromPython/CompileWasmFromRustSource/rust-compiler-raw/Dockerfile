# https://hub.docker.com/_/rust
FROM rust:1.75.0

WORKDIR /usr/src/myapp

COPY . .

RUN cargo update
# <1>
RUN rustup target add wasm32-unknown-unknown
