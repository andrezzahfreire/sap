class ZCL_VEICULO definition
  public
  create public .

public section.

  methods SET_NOME .
  methods GET_NOME .
  methods SET_MODELO .
  methods GET_MODELO .
protected section.

  data MD_MODELO type CHAR100 .
  data MD_VELOCIDADE type INT4 .
private section.

  data MD_NOME type CHAR100 .
ENDCLASS.



CLASS ZCL_VEICULO IMPLEMENTATION.


  method GET_MODELO.
  endmethod.


  method GET_NOME.
  endmethod.


  method SET_MODELO.
  endmethod.


  method SET_NOME.
  endmethod.
ENDCLASS.
