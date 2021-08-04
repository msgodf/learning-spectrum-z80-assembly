org 32768

ld a,2              ; upper screen
call 5633           ; open channel
ld de,string        ; address of string
ld bc,eostr-string  ; length of string to print
call 8252           ; print our string

string defb 'Hello, World!'
eostr  equ $

end 32768
