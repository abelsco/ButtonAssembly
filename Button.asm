;* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;*                        (CóDIGO 1)                               *
;*                          UTFPR                                  *
;*                       ABEL MENEZES                              *
;*   VERSÃO: 1.0                           DATA: 29/03/18          *
;* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;*                     DESCRIÇÃO DO ARQUIVO                        *
;*                                                                 *
;*        CÓDIGO PARA SETAR LEDS DE ACORDO COM OS BOTÕES           *
;*       CASO O BOTÃO1 ACIONA OS LEDS MAIS SIGNIFICATIVOS		   *
;*       CASO O BOTÃO2 ACIONA OS LEDS MENOS SIGNIFICATIVOS		   *
;*-----------------------------------------------------------------*
;* CÓDIGO PARA 8051 DA DISCIPLINA "SISTEMAS MICROCONTROLADOS".     *
;*                                                                 *
;*                                                                 *
;*          FOI UTILIZADO O PORT 0 PARA CONTROLE DOS LEDS 		   *
;*                       E OS PORTS 3.3 E 3.2					   *
;*                                                                 *
;* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
org 0000h

MAIN:
        jmp DEBCNG_B2

        
COND: jmp DEBCNG_B3

DEBCNG_B2:
        jb P3.3, COND
        djnz R0, DEBCNG_B2
        jmp IFP32

DEBCNG_B3:
        jb P3.2, MAIN
        djnz R0, DEBCNG_B3
        jmp IFP33

IFP32:
        mov A,#00001111b
        mov P0, A
        jmp MAIN
IFP33:
        mov A,#11110000b
        mov P0, A
        jmp MAIN
