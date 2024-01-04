# https://pypi.org/project/wasmer/

from wasmer import engine, Store, Module, Instance
from wasmer_compiler_cranelift import Compiler

store = Store(engine.JIT(Compiler))

module = Module(store, open('simple.wasm', 'rb').read())

instance = Instance(module)

result = instance.exports.sum(5, 37)

print(result)