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

    message           db  'Stay home for Nevada', 0
    ;message          db  'Stay home for Nevada', 0x00
