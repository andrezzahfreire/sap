class ZCL_CLIENTE definition
  public
  final
  create public .

public section.

  types:
    MY_USR01_t type STANDARD TABLE OF USR01 .
  types:
    BEGIN OF MY_USR01_s
      , ID TYPE INT4
      , NOME TYPE STRING
      , END OF  MY_USR01_s .

  class-data MD_CPF_ESTATICO type CHAR11 .

  methods DESTRUCTOR .
  class-methods CLASS_CONSTRUCTOR .
  methods CONSTRUCTOR
    importing
      !ID_CPF type CHAR11 optional
      !ID_NOME type CHAR100 .
  methods SET_CPF
    importing
      !ID_CPF type CHAR11 .
  methods GET_CPF
    returning
      value(RD_CPF) type CHAR11 .
  methods SET_NOME
    importing
      !ID_NOME type CHAR100 .
  methods GET_NOME
    returning
      value(RD_NOME) type STRING .
  methods FREE .
protected section.
private section.

  data MD_CPF type CHAR11 .
  data MD_NOME type STRING .
ENDCLASS.



CLASS ZCL_CLIENTE IMPLEMENTATION.


  method CLASS_CONSTRUCTOR.


  endmethod.


METHOD CONSTRUCTOR.
*      me->set_cpf( id_cpf = id_cpf ).
      me->set_nome( id_nome = id_nome ).
ENDMETHOD.


  method DESTRUCTOR.
  endmethod.


  method FREE.
      CLEAR md_cpf.
      CLEAR md_nome.
  endmethod.


  method GET_CPF.
      RD_CPF = MD_CPF.
  endmethod.


  method GET_NOME.
     rd_nome = md_nome.
  endmethod.


  method SET_CPF.
    md_cpf = id_cpf.

  endmethod.


  method SET_NOME.
     md_nome = id_nome.
  endmethod.
ENDCLASS.
