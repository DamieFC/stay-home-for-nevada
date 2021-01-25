    mov si, message
    call print

    print:
      mov ah, 0Eh

    .run:
      lodsb
    ; cmp al, 0x00 
      cmp al, 0
      je .done 
      int 10h
      jmp .run
      .done:
      ret

    message           db  'Hello, world', 0
    ;message          db  'Hello, world', 0x00
