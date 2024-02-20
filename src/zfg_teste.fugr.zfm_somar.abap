FUNCTION ZFM_SOMAR.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(ID_VALOR1) TYPE  INT4
*"     REFERENCE(ID_VALOR2) TYPE  INT4
*"  EXPORTING
*"     REFERENCE(ED_RESULADO) TYPE  INT4
*"----------------------------------------------------------------------

ED_RESULADO = ID_VALOR1 + ID_VALOR2.

ENDFUNCTION.
