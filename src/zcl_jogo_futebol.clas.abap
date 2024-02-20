class ZCL_JOGO_FUTEBOL definition
  public
  final
  create public .

public section.

  methods ADICIONAR_JOGADOR
    importing
      !IO_JOGADOR type ref to ZIF_JOGADOR_FUTEBOL .
protected section.
private section.
ENDCLASS.



CLASS ZCL_JOGO_FUTEBOL IMPLEMENTATION.


  method ADICIONAR_JOGADOR.
   WRITE: / 'Jogador adicionado'.
  endmethod.
ENDCLASS.
