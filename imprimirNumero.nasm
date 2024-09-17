; Elaborado por:
; Amir Zoleyt Vanegas Cárdenas
; 20211020015

extern _exit, _printf

section .data
    fmt  DB "%hhd", 0xa, 0
    DAT0 DB 123

section .text
global _main

_main:
    PUSH dword [DAT0]
    PUSH fmt
    CALL _printf
    ADD esp, 8