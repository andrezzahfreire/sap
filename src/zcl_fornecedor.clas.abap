class ZCL_FORNECEDOR definition
  public
  final
  create public .

public section.

  interfaces ZIF_JOGADOR_FUTEBOL .
protected section.
private section.
ENDCLASS.



CLASS ZCL_FORNECEDOR IMPLEMENTATION.


  method ZIF_JOGADOR_FUTEBOL~CHUTAR.
    WRITE : / 'Fornecedor chutou a bola'.
  endmethod.
ENDCLASS.
