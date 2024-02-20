FORM excluir_cliente USING ud_zclinr TYPE zclinr_e.
  SELECT SINGLE *
    INTO gs_cliente
    FROM zsd_cliente
    WHERE zclinr = ud_zclinr.

  IF sy-subrc <> 0.
      MESSAGE |O cliente { ud_zclinr } não existe |  TYPE 'S' DISPLAY LIKE 'E'.
  ELSE.
    MESSAGE 'Erro em atualizar cliente' TYPE 'S' DISPLAY LIKE 'E'.
  ENDIF.

   DELETE FROM zsd_cliente WHERE zclinr = ud_zclinr.
   IF sy-subrc = 0.
      MESSAGE 'Cliente excluido com sucesso' TYPE 'S'.
  ELSE.
    MESSAGE 'Erro ao excluir cliente' TYPE 'S' DISPLAY LIKE 'E'.
  ENDIF.


ENDFORM.

FORM show_alv.

  DATA: ls_fieldcat TYPE slis_fieldcat_alv.
  DATA: lt_fieldcat TYPE STANDARD TABLE OF slis_fieldcat_alv.

  CLEAR lt_fieldcat.

  CLEAR ls_fieldcat.
  ls_fieldcat-fieldname = 'ZCLINR'.
  ls_fieldcat-seltext_m = 'Cód.Cliente'.
  APPEND ls_fieldcat TO lt_fieldcat.

  CLEAR ls_fieldcat.
  ls_fieldcat-fieldname = 'ERDAT'.
  ls_fieldcat-seltext_m = 'Data criação'.
  ls_fieldcat-outputlen = 60.
  APPEND ls_fieldcat TO lt_fieldcat.

  CLEAR ls_fieldcat.
  ls_fieldcat-fieldname = 'Nome'.
  ls_fieldcat-seltext_m = 'Nome'.
  ls_fieldcat-outputlen = 60.
  APPEND ls_fieldcat TO lt_fieldcat.

  CLEAR ls_fieldcat.
  ls_fieldcat-fieldname = 'EMAIL'.
  ls_fieldcat-seltext_m = 'Email'.
  ls_fieldcat-outputlen = 60.
  APPEND ls_fieldcat TO lt_fieldcat.

  CLEAR ls_fieldcat.
  ls_fieldcat-fieldname = 'LIMITE CREDITO'.
  ls_fieldcat-seltext_m = 'Limite'.
  ls_fieldcat-outputlen = 60.
  APPEND ls_fieldcat TO lt_fieldcat.

    CLEAR ls_fieldcat.
  ls_fieldcat-fieldname = 'STATUS'.
  ls_fieldcat-seltext_m = 'Status'.
  ls_fieldcat-outputlen = 60.
  APPEND ls_fieldcat TO lt_fieldcat.

  CALL FUNCTION 'REUSE_ALV_GRID_DISPLAY'
    EXPORTING
      i_callback_program      = sy-repid
      i_grid_title            = 'Mensagens'
      it_fieldcat             = lt_fieldcat
      i_save                  = 'X'
      i_callback_top_of_page  = 'TOP-OF-PAGE'  "see FORM
      i_callback_user_command = 'USER_COMMAND'
*     is_layout               = gd_layout
*     it_special_groups       = gd_tabgroup
*     it_events               = gt_xevents
*     is_variant              = z_template
    TABLES
      t_outtab                = gt_cliente
    EXCEPTIONS
      program_error           = 1
      others                  = 2.
 ENDFORM.

FORM SET_PF_STATUS USING RT_EXTAB TYPE SLIS_T_EXTAB.
  SET PF-STATUS 'STANDARD'.
ENDFORM.
FORM HANDLE_ALV_EVENT
  USING ucomm     TYPE syucomm
        selfield  TYPE slis_selfield.

  DATA: ld_field TYPE char10.

  READ TABLE gt_cliente INTO gs_cliente INDEX selfield-tabindex.
  ld_field = gs_cliente-zclinr.

  CONDENSE ld_field NO-GAPS.

  SET PARAMETER ID 'ZCLINR' FIELD ld_field.

  CASE ucomm.
    WHEN 'CREATE'.
      CALL TRANSACTION 'ZSD002'.
    WHEN 'EDIT'.
      CALL TRANSACTION 'ZSD003' AND SKIP FIRST SCREEN .
    WHEN 'DELETE'.
      PERFORM excluir_cliente USING gs_cliente-zclinr.
  ENDCASE.
  PERFORM consultar.

   selfield-refresh = 'X'.
ENDFORM.

FORM consultar.
SELECT *
    INTO TABLE gt_cliente
    FROM zsd_cliente UP TO p_limit ROWS
    WHERE zclinr          IN  s_zclinr[]
    AND erdat             IN  s_erdat[]
    AND erzet             IN  s_erzet[]
    AND nome              IN  s_nome[]
    AND email             IN  s_email[]
    AND limite_credito    IN  s_lcred[]
    AND status            IN  s_status[].

ENDFORM.
