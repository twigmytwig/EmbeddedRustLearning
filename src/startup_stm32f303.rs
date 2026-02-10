

//Define the vector table for the mcu

//define the reset handler
///When the mcu resets, this handler is called. Essentially the entry point to the program
fn reset_handler(){
    // copy .data section from flash to ram
    //zero out the .bss secion in ram
    //call main()
}

//define the exception handlers