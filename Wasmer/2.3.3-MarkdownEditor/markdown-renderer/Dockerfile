FROM rust:1.67

WORKDIR /usr/src/myapp

COPY . .

RUN cargo update
RUN rustup target add wasm32-wasi
