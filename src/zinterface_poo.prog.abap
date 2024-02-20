REPORT ZINTERFACE_POO.

START-OF-SELECTION.
  DATA lo_cliente TYPE REF TO zcl_jogador.
  DATA lo_fornecedor type REF TO zcl_fornecedor.
  DATA lo_jogo type REF TO zcl_jogo_futebol.

  lo_cliente = new zcl_jogador( ).
  lo_fornecedor = new zcl_fornecedor( ).
  lo_jogo = new zcl_jogo_futebol( ).

  WRITE: / 'Inicio'.

  lo_cliente->zif_jogador_futebol~chutar( id_bola = 1  ).
  lo_fornecedor->zif_jogador_futebol~chutar( id_bola = 1  ).

  WRITE: / 'Fim'.
