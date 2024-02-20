FUNCTION ZFM_NOME_COMPLETO.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     VALUE(ID_PRIMEIRO_NOME) TYPE  CHAR100
*"     VALUE(ID_ULTIMO_NOME) TYPE  CHAR100
*"  EXPORTING
*"     VALUE(ED_NOME_COMPLETO) TYPE  CHAR255
*"----------------------------------------------------------------------

  ed_nome_completo = | { id_primeiro_nome } { id_ultimo_nome } |.
ENDFUNCTION.
