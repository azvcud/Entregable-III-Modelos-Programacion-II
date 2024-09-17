; Elaborado por:
; Samuel Antonio Sanchez Peña
; 20212020151

section .data
    num1 db 10    ; Primer número a sumar
    num2 db 20    ; Segundo número a sumar
    sum db 0      ; Variable para almacenar el resultado

section .text
    global _start

_start:
    ; Cargar el primer número en el registro AL
    mov al, [num1]

    ; Sumar el segundo número al registro AL
    add al, [num2]

    ; Guardar el resultado en la variable sum
    mov [sum], al

    ; Salir del programa
    mov eax, 1    ; Código de salida (sys_exit)
    int 0x80      ; Llamar al kernel