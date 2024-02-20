class ZCL_BICICLETA definition
  public
  inheriting from ZCL_VEICULO
  final
  create public .

public section.

  methods TOCAR_SINO .
  methods PEDALAR .
protected section.
private section.

  data MD_PELADEIRA type ABAP_BOOL .
ENDCLASS.



CLASS ZCL_BICICLETA IMPLEMENTATION.


  method PEDALAR.

    me->md_velocidade = ME->md_velocidade + 1.

  endmethod.


  method TOCAR_SINO.
  endmethod.
ENDCLASS.
