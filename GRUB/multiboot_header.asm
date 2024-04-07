section .multiboot_header    ; Section declaration for multiboot header

magic equ 0xe85250d6         ; Define magic number constant
arch equ 0                    ; Define architecture constant

header_start:                 ; Label for header start

dd magic                      ; Define double word (4 bytes) for magic number
dd arch                       ; Define double word (4 bytes) for architecture
dd header_end - header_start ; Define double word (4 bytes) for header length
dd 0x100000000 - (magic + arch + (header_end - header_start)) ; Define double word (4 bytes) for checksum

dw 0                          ; Define word (2 bytes) padding
dw 0                          ; Define word (2 bytes) padding

dd 8                          ; Define double word (4 bytes) for header tag end

header_end:                   ; Label for header end
