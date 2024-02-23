* Ultima atualização 07/08/2023 v0.1
* Classes de refrexão encontradas na SE24 (CL_ABAP_*DESCR)
* CL_ABAP_CLASSDESCR
* CL_ABAP_COMPLEXDESCR
* CL_ABAP_DATADESCR
* CL_ABAP_ELEMDESCR
* CL_ABAP_ENUMDESCR
* CL_ABAP_INTFDESCR
* CL_ABAP_OBJECTDESCR
* CL_ABAP_REFDESCR
* CL_ABAP_STRUCTDESCR
* CL_ABAP_TABLEDESCR
* CL_ABAP_TYPEDESCR
*
REPORT ZREFLEXAO NO STANDARD PAGE HEADING.

SELECTION-SCREEN BEGIN OF BLOCK main WITH FRAME.
  PARAMETERS: p_name TYPE string OBLIGATORY. " Parâmetro para inserir o nome do objeto a ser refletido.

  PARAMETERS: p_eleme RADIOBUTTON GROUP g1 DEFAULT 'X'. " Elemento de dados
  PARAMETERS: p_struc RADIOBUTTON GROUP g1. " Estrutura
  PARAMETERS: p_table RADIOBUTTON GROUP g1. " Tabela interna
  PARAMETERS: p_class RADIOBUTTON GROUP g1. " Classe
  PARAMETERS: p_inter RADIOBUTTON GROUP g1. " Interfaces
SELECTION-SCREEN END OF BLOCK main.

START-OF-SELECTION.
  DATA: lr_data       TYPE REF TO data. " Referência de dados genérica
  DATA: lo_type       TYPE REF TO cl_abap_typedescr. " Referência para descrição do tipo
  data: lo_table      TYPE REF TO cl_abap_tabledescr. " Referência para descrição de tabela
  DATA: lo_struc      TYPE REF TO cl_abap_structdescr. " Referência para descrição de estrutura
  DATA: lt_comp       TYPE abap_compdescr_tab. " Tabela para componentes de estrutura
  DATA: ls_comp       LIKE LINE OF lt_comp. " Estrutura para um único componente
  DATA: lo_object     TYPE REF TO cl_abap_objectdescr. " Referência para descrição de objeto
  DATA: ls_methods    TYPE abap_methdescr. " Estrutura para descrição de método
  DATA: ls_attributes TYPE abap_attrdescr. " Estrutura para descrição de atributo

  FIELD-SYMBOLS: <ld_data> TYPE any. " Field symbol para dados genéricos

  BREAK-POINT.

  " Verifica se não foi selecionado nenhum tipo de objeto
  IF NOT ( p_class = 'X' OR p_inter = 'X' ).
    " Cria uma referência de dados com base no tipo inserido pelo usuário
    CREATE DATA lr_data TYPE (p_name).
    " Atribui a referência de dados a um field symbol
    ASSIGN lr_data->* TO <ld_data>.
  ENDIF.

  " Se o usuário selecionou o rádio button para Elemento de dados
  IF p_eleme = 'X'.
     " Descreve o tipo de dado e atribui à referência lo_type
     lo_type = cl_abap_typedescr=>describe_by_data( <ld_data> ).
     " Escreve informações sobre o tipo de dado
     WRITE: /(15)'absolute_name: ', lo_type->absolute_name.
     WRITE: /(15)'kind: ', lo_type->kind.
     WRITE: /(15)'decimals: ', lo_type->decimals.
     WRITE: /(15)'length: ', lo_type->length.
     WRITE: /(15)'type_kind: ', lo_type->type_kind.
  ENDIF.

  " Se o usuário selecionou o rádio button para Estrutura
  IF p_struc = 'X'.
    " Descreve a estrutura com base nos dados e atribui à referência lo_struc
    lo_struc ?= cl_abap_structdescr=>describe_by_data( p_data = <ld_data> ).
    " Obtém os componentes da estrutura
    lt_comp  = lo_struc->components[].

    " Escreve informações sobre a estrutura
    WRITE: /(15)'absolute_name: ', lo_struc->absolute_name.
    WRITE: /(15)'kind: ', lo_struc->kind.
    WRITE: /(15)'decimals: ', lo_struc->decimals.
    WRITE: /(15)'length: ', lo_struc->length.
    WRITE: /(15)'type_kind: ', lo_struc->type_kind.
    SKIP.

    " Escreve informações sobre os campos da estrutura
    WRITE: 'Campos'.
    WRITE sy-uline.
    NEW-LINE.
    LOOP AT lt_comp INTO ls_comp.
      WRITE: 'name: ', ls_comp-name.
      WRITE: 'type_kind: ', ls_comp-type_kind.
      WRITE: 'length: ', ls_comp-length.
      WRITE: 'decimals: ', ls_comp-decimals.
      NEW-LINE.
    ENDLOOP.
  ENDIF.

  " Se o usuário selecionou o rádio button para Tabela interna
  IF p_table = 'X'.
    " Descreve a tabela com base nos dados e atribui à referência lo_table
    lo_table ?= cl_abap_tabledescr=>describe_by_data( <ld_data> ).
    " Obtém a estrutura da linha da tabela
    lo_struc ?= lo_table->get_table_line_type( ).
    " Obtém os componentes da estrutura da linha da tabela
    lt_comp   = lo_struc->components[].

    " Escreve informações sobre a tabela
    WRITE: /(15)'absolute_name: ', lo_table->absolute_name.
    WRITE: /(15)'kind: ', lo_table->kind.
    WRITE: /(15)'decimals: ', lo_table->decimals.
    WRITE: /(15)'length: ', lo_table->length.
    WRITE: /(15)'type_kind: ', lo_table->type_kind.
    SKIP.

    " Escreve informações sobre os campos da estrutura da tabela
    WRITE: 'Campos'.
    WRITE sy-uline.
    LOOP AT lt_comp INTO ls_comp.
      WRITE: 'name: ', ls_comp-name.
      WRITE: 'type_kind: ', ls_comp-type_kind.
      WRITE: 'length: ', ls_comp-length.
      WRITE: 'decimals: ', ls_comp-decimals.
      NEW-LINE.
    ENDLOOP.
  ENDIF.

  " Se o usuário selecionou o rádio button para Classe
  IF p_class = 'X'.
    " Descreve a classe com base no nome inserido pelo usuário
    lo_object ?= cl_abap_objectdescr=>describe_by_name( p_name ).

    " Escreve informações sobre os métodos da classe
    WRITE: 'Métodos'.
    WRITE sy-uline.
    NEW-LINE.
    LOOP AT lo_object->methods INTO ls_methods.
      WRITE: / ls_methods-name.
    ENDLOOP.
    SKIP.

    " Escreve informações sobre os atributos da classe
    WRITE: 'Atributos'.
    WRITE sy-uline.
    NEW-LINE.
   NEW-LINE.
    LOOP AT lo_object->attributes INTO ls_attributes.
      WRITE: / ls_attributes-name.
    ENDLOOP.
  ENDIF.
