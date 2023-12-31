;; https://github.com/wasm3/wasm3/blob/main/docs/Cookbook.md#wat-library
(module
  (func (export "swap") (param i32 i32) (result i32 i32)
    (local.get 1)
    (local.get 0)
  )
)