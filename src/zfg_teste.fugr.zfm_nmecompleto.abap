FUNCTION ZFM_NMECOMPLETO.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(ID_NOME1) TYPE  CHAR20
*"     REFERENCE(ID_NOME2) TYPE  CHAR20
*"  EXPORTING
*"     REFERENCE(ED_NOMECOMPLETO) TYPE  CHAR100
*"----------------------------------------------------------------------
ED_NOMECOMPLETO = |{ ID_NOME1 } { ID_NOME1 } |.




ENDFUNCTION.
