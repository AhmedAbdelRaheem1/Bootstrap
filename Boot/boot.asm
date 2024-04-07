bits 16                    ; Set code generation to 16-bit mode

start:                     ; Entry point label

mov ax, 0x07C0            ; Load bootloader segment address into AX
add ax, 0x20              ; Add 32 to AX to get segment address of bootloader
mov ss, ax                ; Set stack segment (SS) to bootloader segment address
mov sp, 0x1000            ; Set stack pointer (SP) to 0x1000
mov ax, 0x07C0            ; Load bootloader segment address again into AX
mov ds, ax                ; Set data segment (DS) to bootloader segment address

mov si, msg               ; Load offset of msg string into SI
mov ah, 0x0E              ; Set AH to 0x0E (TTY display)

.next:                     ; Loop label
lodsb                      ; Load byte from SI into AL, increment SI
cmp al, 0                  ; Compare AL with 0 (end of string)
je .done                   ; If AL is 0, jump to done
int 0x10                   ; Otherwise, call interrupt 0x10 to display character
jmp .next                  ; Jump back to next to continue looping

.done:                     ; Done label
jmp $                      ; Infinite loop

msg: db "Hello", 0         ; Define msg string terminated with 0

times 510-($-$$) db 0      ; Fill remaining boot sector with zeros
dw 0xAA55                  ; Boot signature

