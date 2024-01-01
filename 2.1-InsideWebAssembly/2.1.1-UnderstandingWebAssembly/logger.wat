;; https://github.com/mdn/webassembly-examples/blob/main/understanding-text-format/logger.wat
(module
  (import "console" "log" (func $log (param i32)))
  (func (export "logIt")
    i32.const 13
    call $log
  )
)