*&---------------------------------------------------------------------*
*& Report ZTESTE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTESTE.

START-OF-SELECTION.
    DATA lo_cliente TYPE REF TO zcl_cliente.

     lo_cliente = new zcl_cliente( id_cpf = '123' id_nome = 'Teste' ).

     lo_cliente->free( ).

*CLASS lcl_cliente DEFINITION.
*    PUBLIC SECTION.
*    METHODS set_cpf
*      IMPORTING
*        id_cpf TYPE char11.
*
*    METHODS get_cpf
*      RETURNING
*       value(rd_cpf) TYPE char11.
*
*    METHODS get_cpf_formatado
*      RETURNING
*       value(rd_cpf) TYPE char14.
*
*    METHODS set_nome
*      IMPORTING
*        id_nome TYPE string.
*
*    METHODS get_nome
*      RETURNING
*       value(rd_nome) TYPE string.
*
*
*    PRIVATE SECTION.
*        DATA md_cpf  TYPE char11.
*        DATA md_nome TYPE string.
*ENDCLASS.
*
*CLASS lcl_cliente IMPLEMENTATION.
*  METHOD set_cpf.
*    me->md_cpf = id_cpf.
*  ENDMETHOD.
*  METHOD get_cpf_formatado.
*      CONCATENATE md_cpf+0(3)'.' md_cpf+3(3)'.' md_cpf+6(3)'-' md_cpf+9(2)
*      INTO rd_cpf.
*  ENDMETHOD.
*    METHOD set_nome.
*      me->md_nome = id_nome.
*  ENDMETHOD.
*  METHOD get_nome.
*    rd_nome = md_nome.
*  ENDMETHOD.
*ENDCLASS.
*
*CLASS lcl_pedido DEFINITION.
*  PUBLIC SECTION.
*  METHODS set_cliente
*   IMPORTING
*     io_cliente TYPE REF TO lcl_cliente.
*
*  METHODS get_cliente
*    RETURNING VALUE(ro_cliente) TYPE REF TO lcl_cliente.
*    ENDCLASS.
*
*    CLASS lcl_pedido IMPLEMENTATION.
*      METHOD set_cliente.
*        mo_cliente = io_cliente.
*        ENDMETHOD.
*      METHOD get_cliente.
*        ro_cliente = io_cliente.
*        ENDMETHOD.
*        ENDCLASS.
*START-OF-SELECTION.
*  DATA lc_cliente1 TYPE REF TO lcl_cliente.
*  lc_cliente1 = new lcl_cliente( ).
*
*  lc_cliente1->set_cpf( id_cpf   = '1234567890').
*
*  WRITE lc_cliente1->get_cpf_formatado( ).
*  lo_pedido->set_cliente( io_cliente = io_cliente ).

*SELECTION-SCREEN BEGIN OF BLOCK b1.
*    PARAMETERS p_cpf TYPE zcpf_e.
*SELECTION-SCREEN END OF BLOCK b1.
*
*START-OF-SELECTION.
*
*WRITE p_cpf.

*DATA: ld_numero TYPE char10.
*
*ld_numero = '1'.
*
*CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
*    EXPORTING
*      input = ld_numero
*     IMPORTING
*       output = ld_numero.
*    WRITE ld_numero.
*
*CALL FUNCTION 'CONVERSION_EXIT_ALPHA_outPUT'
*    EXPORTING
*      input = ld_numero
*     IMPORTING
*       output = ld_numero.
*    WRITE ld_numero.

*SELECTION-SCREEN BEGIN OF BLOCK B1.
*    PARAMETERS p_spras TYPE spras.
*  SELECTION-SCREEN END OF BLOCK B1.
*
*START-OF-SELECTION.
*    BREAK-POINT.
*
*    WRITE p_spras.

*SELECTION-SCREEN BEGIN OF BLOCK B1.
*    PARAMETERS p_unid TYPE meins.
*  SELECTION-SCREEN END OF BLOCK B1.

*START-OF-SELECTION.
*    BREAK-POINT.

*    WRITE p_unid.

*DATA ld_resultado TYPE INT4.
*
*CALL FUNCTION 'ZFM_SOMAR'
*    EXPORTING
*      id_valor1 = 10
*      id_valor2 = 2
*  IMPORTING
*    ED_RESULADO =  ld_resultado
*    EXCEPTIONS
*       OTHERS = 1.
*
*IF sy-subrc = 0.
*  WRITE 'Deu certo'.
*  ELSE.
*    WRITE 'Deu errado'.
*ENDIF.


** Programas exemplos do BCALV_GRID_01 até BCALV_GRID_11
*
*START-OF-SELECTION.
*  "PERFORM exemplo1.
*  PERFORM exemplo2.
*
*FORM exemplo1.
*  DATA: lo_table   TYPE REF TO cl_salv_table.
*  DATA: lo_columns TYPE REF TO cl_salv_columns_table.
*
*  DATA: lt_result TYPE STANDARD TABLE OF stravelag.
*
*  SELECT *
*    INTO TABLE lt_result
*    FROM stravelag.
*
*  cl_salv_table=>factory(
*  IMPORTING
*    r_salv_table = lo_table
*  CHANGING
*    t_table = lt_result
*  ).
*
*  lo_columns = lo_table->get_columns( ).
*  lo_columns->set_optimize( ).
*
*  lo_table->display( ).
*ENDFORM.
*FORM exemplo2.
*  DATA: ls_fieldcat TYPE slis_fieldcat_alv.
*  DATA: lt_fieldcat TYPE STANDARD TABLE OF slis_fieldcat_alv.
*
*  DATA: lt_message TYPE bapiret2_t.
*  DATA: ls_message TYPE bapiret2.
*
*  CLEAR lt_fieldcat.
*
*  CLEAR ls_fieldcat.
*  ls_fieldcat-fieldname = 'TYPE'.
*  ls_fieldcat-seltext_m = 'Tipo'.
*  APPEND ls_fieldcat TO lt_fieldcat.
*
*  CLEAR ls_fieldcat.
*  ls_fieldcat-fieldname = 'MESSAGE'.
*  ls_fieldcat-seltext_m = 'Mensagem'.
*  ls_fieldcat-outputlen = 60.
*  APPEND ls_fieldcat TO lt_fieldcat.
*
*  CLEAR ls_message.
*  ls_message-type    = 'E'.
*  ls_message-message = 'Teste 1'.
*  APPEND ls_message TO lt_message.
*
*  CLEAR ls_message.
*  ls_message-type    = 'S'.
*  ls_message-message = 'Teste 2'.
*  APPEND ls_message TO lt_message.
*
*  CLEAR ls_message.
*  ls_message-type    = 'W'.
*  ls_message-message = 'Teste 3'.
*  APPEND ls_message TO lt_message.
*
*  CALL FUNCTION 'REUSE_ALV_GRID_DISPLAY'
*    EXPORTING
*      i_callback_program      = sy-repid
*      i_grid_title            = 'Mensagens'
*      it_fieldcat             = lt_fieldcat
*      i_save                  = 'X'
**     i_callback_top_of_page  = 'TOP-OF-PAGE'  "see FORM
**     i_callback_user_command = 'USER_COMMAND'
**     is_layout               = gd_layout
**     it_special_groups       = gd_tabgroup
**     it_events               = gt_xevents
**     is_variant              = z_template
*    TABLES
*      t_outtab                = lt_message
*    EXCEPTIONS
*      program_error           = 1
*      others                  = 2.
*ENDFORM.


*SELECTION-SCREEN BEGIN OF BLOCK b1.
*   PARAMETERS p_kunnr TYPE ZTESTE_CLIENTE-kunnir. "MATCHCODE OBJECT ZSH_ZTESTE_CLIENTE.
*    PARAMETERS p_name TYPE  ZTESTE_CLIENTE-name.
*SELECTION-SCREEN END OF BLOCK b1.
*
*START-OF-SELECTION.
*    BREAK-POINT.



*DATA: lv_start TYPE i,
*      lv_end    TYPE i.
*
*DATA: lt_usr02 TYPE STANDARD TABLE OF usr02.
*
*PERFORM start_timer.
*
*DO 100 TIMES.
*  SELECT *
*      INTO TABLE lt_usr02
*      FROM usr02 BYPASSING BUFFER
*      WHERE aname = 'DEVELOPER'.
*ENDDO.
*
*PERFORM  stop_timer.
*
*WRITE     lv_end.
*
*FORM start_timer.
*     CLEAR : lv_start, lv_end.
*     GET RUN TIME FIELD lv_start.
*ENDFORM.
*FORM stop_timer.
*    GET RUN TIME FIELD lv_end.
*    lv_end = lv_end - lv_start.
*ENDFORM.



*DATA LS_CLIENTE TYPE ZCLIENTE_S.
*
*ls_cliente-rede-nome_rede  = '123'.
*ls_cliente-rede-url-rede  = 'SFSFSFSFS'.
*LS_CLIENTE-REDE = '123456789htttp://'.


*DATA: ld_celular TYPE zcelular_e.
*
*    ld_celular = '43999999999'.

" WRITE   'Hello world'.

*tIPOS
*s = sUCESSO
*e = eRRO
*w = aVISO
*i = iNFORMAÇÃO
*a = aBORTAR
*x = cANCELAR (dump)
*
*cOMPORTAMENTOS DA MENSAGEM
*
*uSOS
*mESSAGE 'tESTE' TYPE 's'
*mESSAGE 'tESTE' TYPE 's' display like 'e'
*mESSAGE Z000(ZTEST) with 'vINICIUS'
*
*SY-MAGRID = 'ztEST'
*mESSAGE id MY_MAGRID TYPE 's' number 000 wITH 'viNICIUS'.


*data LD_MESSAGE type STRING.
*message Z0000(Z) wITH 'vINICIUS' into LD_MESSAGE
*wRITE LD_MESSAGE
*SKIP

*SELECTION-SCREEN BEGIN OF BLOCK bi.
*    PARAMETERS p_mag(60) TYPE c OBLIGATORY DEFAULT 'Isso é uma mensagem'.
*    PARAMETERS p_type TYPE c OBLIGATORY.
*SELECTION-SCREEN END OF BLOCK bi.

*AT SELECTION-SCREEN.
*    IF p_type = 'W'.
*      MESSAGE 'Isso é um aviso' TYPE 'W'.
*    ENDIF.
*
*START-OF-SELECTION.
*    DATA : ld_message type string.
*    MESSAGE s000(zteste) WITH 'vINICIUS' 'Dias' into ld_message.
*    WRITE ld_message.
*    SKIP.
*
*    WRITE 'Fim do programa'.


*    START-OF-SELECTION.
*         MESSAGE S000(zcurso).
*          MESSAGE s001(zcurso) WITH 'João'.
*          MESSAGE s002 (zcurso) WITH 'Curso' 'ABAP'.

*           MESSAGE S003(zcurso).
