TARGETS=hello.wasm

all: $(TARGETS)

%.wasm : %.c
	zig build-exe -O ReleaseSmall -target wasm32-wasi $< -lc
