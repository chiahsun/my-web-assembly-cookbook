(module
  (func (export "add") (param $p i32) (result i32)
  local.get $p
  local.get $p
  i32.add))