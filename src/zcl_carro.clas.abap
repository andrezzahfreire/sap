class ZCL_CARRO definition
  public
  inheriting from ZCL_VEICULO
  create public .

public section.

  methods LIGAR .
  methods DESLIGAR .
  methods ACELERAR .
protected section.
private section.

  data MD_RODA1 type CHAR100 .
  data MD_RODA2 type CHAR100 .
  data MD_RODA3 type CHAR100 .
  data MD_RODA4 type CHAR100 .
  data MD_MOTOR_COMBUSTAO type INT4 .
ENDCLASS.



CLASS ZCL_CARRO IMPLEMENTATION.


  method ACELERAR.
  endmethod.


  method DESLIGAR.
  endmethod.


  method LIGAR.
  endmethod.
ENDCLASS.
