MEMORY{
    FLASH (rx) : ORIGIN = 0x08000000, LENGTH = 256K
    RAM (rwx) : ORIGIN = 0x20000000, LENGTH = 40K
    CCMRAM (rwx): ORIGIN = 0x10000000, LENGTH 8K
}

SECTIONS{
    /*
    Defines where each program section is placed in the microcrontrollers memeory.

    The linker assigns addresses based on the sections command, creating an ELF file wit hexact emory location.
          For example, if FLASH is at 0x08000000 and the .text section is placed in flash, the linker will assign address
          starting from 0x08000000 for the .text section

    The elf file guides the programming tool to correctly place the sections in the microcontroller ensuring proper exec of code
    */

    .text :
    {
        /*here you should collect all executable code*/
        *(.text)
        *(.text.*)
    } > FLASH

    .rodata :
    {
        *(.rodata)
        *(.rodata.*)
    } > FLASH

    /*Initilized data will be in FLASH AND IT WILL ALSO BE IN RAM DURING RUNTIME*/
    .data: 
    {
        *(.data)
        *(.data.*)
    } > RAM AT> FLASH

    /*Uninitialized data will be in the ram*/
    .bss :
    {
        *(.bss)
        *(.bss.*)
    } > RAM
}