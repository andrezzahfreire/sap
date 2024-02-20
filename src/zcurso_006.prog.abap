*&---------------------------------------------------------------------*
*& Report ZCURSO_006
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZCURSO_006.
"aula 9
SELECTION-SCREEN BEGIN OF BLOCK bi.
  PARAMETER: p_lbim TYPE p DECIMALS 2.
  PARAMETER: p_2bim TYPE p DECIMALS 2.
  PARAMETER: p_3bim TYPE p DECIMALS 2.
  PARAMETER: p_4bim TYPE p DECIMALS 2.
SELECTION-SCREEN END OF BLOCK bi.

START-OF-SELECTION.
    DATA ld_media(12) TYPE p DECIMALS 2.

ld_media = (  p_lbim + p_2bim + p_3bim + p_4bim ) / 4.

WRITE 'A média anual do aluno é: '.
WRITE ld_media.
