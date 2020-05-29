SECTION .data

primary_heap_tab    times 0x100 dd 0    ; the top-level heap memory table has 256 32-bit entries

SECTION .rodata

err_invalid_size db "Requested allocation size is invalid (zero or too large).", 0
