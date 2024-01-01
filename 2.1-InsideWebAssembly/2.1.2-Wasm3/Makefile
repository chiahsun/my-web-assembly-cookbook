TARGETS=swap.wasm hello.wasm local.wasm

all: $(TARGETS)

%.wasm: %.wat
	wat2wasm $< -o $@

clean:
	rm -f $(TARGETS)
