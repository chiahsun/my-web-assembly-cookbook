// https://github.com/wasmerio/wasmer-python/blob/master/examples/appendices/simple.rs

#[no_mangle]
pub extern fn sum(x: i32, y: i32) -> i32 {
    x + y
}