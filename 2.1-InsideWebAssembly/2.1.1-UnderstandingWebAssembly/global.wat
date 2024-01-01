;; https://github.com/mdn/webassembly-examples/blob/main/js-api-examples/global.wat
(module
  (global $g (import "js" "global") (mut i32)) ;; <1>
  (func (export "getGlobal") (result i32)
    (global.get $g))
  (func (export "incGlobal")
    (global.set $g
      (i32.add (global.get $g) (i32.const 1)))
  )
)