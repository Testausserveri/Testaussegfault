fn main() {
    unsafe { std::ptr::null_mut::<i32>().write(42) };
}
