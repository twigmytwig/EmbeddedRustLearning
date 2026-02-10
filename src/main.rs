#![no_std]
#![allow(clippy::empty_loop)]
#![no_main]

use core::panic::PanicInfo;

#[unsafe(no_mangle)]
fn main() -> !{
    loop{

    }
}

#[panic_handler]
fn panic_handler(_info: &PanicInfo) -> ! {
    loop {

    }
}