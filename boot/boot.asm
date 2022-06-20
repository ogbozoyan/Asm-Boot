 BITS 16
        mov     ax,     07C0h
        mov     ds,     ax

        mov     ax,     0b800h
        mov     es,     ax

        mov     ax,     3
        int     10h

        xor     di,     di
        mov     si,     msg

        mov     ah,     0f0h
next:   lodsb
        test    al,     al
        jz      end
        stosw
        jmp     next
end:    jmp     $
msg:    db     'Hello, world'
        times   510 - ($-$$) db 0
        dw      0AA55h
        times    1024*1024 - ($-$$) db 0