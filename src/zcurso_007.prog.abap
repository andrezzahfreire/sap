*&---------------------------------------------------------------------*
*& Report ZCURSO_007
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZCURSO_007.
" aula 10
SELECTION-SCREEN BEGIN OF BLOCK bi.
    PARAMETER p_1bim(12) TYPE p DECIMALS 2.
    PARAMETER p_2bim(12) TYPE p DECIMALS 2.
    PARAMETER p_3bim(12) TYPE p DECIMALS 2.
    PARAMETER p_4bim(12) TYPE p DECIMALS 2.
SELECTION-SCREEN END OF BLOCK bi.

START-OF-SELECTION.
  DATA ld_media(12) TYPE p DECIMALS 2.

" Operadores
" =
" <>
" >
">=
"<
"<=
"not
" and
" or




*  ld_media = ( p_1bim + p_2bim + p_3bim + p_4bim  ) / 4.
*
*IF ld_media < 60. " se
*    WRITE: 'Sua média anual foi de' , ld_media , ',voce foi reprovado'.
*ELSE. "senão
*    WRITE: 'Sua média anual foi de', ld_media, ',voce foi aprovado parabéns'.
*ENDIF.

  ld_media = ( p_1bim + p_2bim + p_3bim + p_4bim  ) / 4.

IF ld_media >= 0 AND ld_media <= 50.
    WRITE: 'Sua nota foi muito baixa , voce foi reprovado!' .
ELSEIF ld_media >= 51 AND ld_media <= 59.
    WRITE: 'Voce quase passou estude um pouco mais'.
ELSEIF ld_media >= 60 AND ld_media <= 100.
    WRITE: 'Parabens, voce passou'.
ELSE.
  WRITE: 'Sua nota é inválida'.
ENDIF.
