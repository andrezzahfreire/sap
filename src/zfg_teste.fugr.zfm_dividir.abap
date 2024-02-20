FUNCTION ZFM_DIVIDIR.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(ID_VALOR1) TYPE  INT4
*"     REFERENCE(ID_VALOR2) TYPE  INT4
*"  EXPORTING
*"     REFERENCE(ED_RESULADO) TYPE  INT4
*"  EXCEPTIONS
*"      DIVISAO_POR_ZERO
*"----------------------------------------------------------------------

IF ID_VALOR2 = 0.
    RAISE DIVISAO_POR_ZERO.
ENDIF.

ED_RESULADO = ID_VALOR1 / ID_VALOR2.


ENDFUNCTION.
