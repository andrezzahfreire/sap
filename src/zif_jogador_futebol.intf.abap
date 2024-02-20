interface ZIF_JOGADOR_FUTEBOL
  public .


  data MD_NUMERO_DE_JOGADORES type INT4 .
  constants MC_TEMPO_DA_PARTIDA type INT4 value 90 ##NO_TEXT.

  methods CHUTAR
    importing
      !ID_BOLA type INT4 .
  methods COBRAR_ESCANTEIO .
endinterface.
