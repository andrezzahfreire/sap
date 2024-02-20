class ZCL_JOGADOR definition
  public
  final
  create public .

public section.

  interfaces ZIF_JOGADOR_FUTEBOL
      data values MD_NUMERO_DE_JOGADORES = 11 .
protected section.
private section.
ENDCLASS.



CLASS ZCL_JOGADOR IMPLEMENTATION.


  method ZIF_JOGADOR_FUTEBOL~CHUTAR.
    WRITE : / 'Jogador chutou a bola'.
  endmethod.


  method ZIF_JOGADOR_FUTEBOL~COBRAR_ESCANTEIO.
      WRITE : / 'Jogador cobrou o escanteio'.
  endmethod.
ENDCLASS.
