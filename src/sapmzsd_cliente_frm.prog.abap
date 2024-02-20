FORM excluir_cliente.
  SELECT SINGLE *
    INTO gs_cliente
    FROM zsd_cliente
    WHERE zclinr = gd_zclinr.

  IF sy-subrc <> 0.
      MESSAGE |O cliente { gd_zclinr } não existe |  TYPE 'S' DISPLAY LIKE 'E'.
  ELSE.
    MESSAGE 'Erro em atualizar cliente' TYPE 'S' DISPLAY LIKE 'E'.
  ENDIF.

   DELETE FROM zsd_cliente WHERE zclinr = gd_zclinr.
   IF sy-subrc = 0.
      MESSAGE 'Cliente excluido com sucesso' TYPE 'S'.
  ELSE.
    MESSAGE 'Erro ao excluir cliente' TYPE 'S' DISPLAY LIKE 'E'.
  ENDIF.






ENDFORM.

FORM modificar.
  MODIFY zsd_cliente FROM gs_cliente.
  IF sy-subrc = 0.
      MESSAGE 'Cliente atualizado com sucesso' TYPE 'S'.
  ELSE.
    MESSAGE 'Erro em atualizar cliente' TYPE 'S' DISPLAY LIKE 'E'.
  ENDIF.
ENDFORM.

FORM modificar_cliente.
  SELECT SINGLE *
    INTO gs_cliente
    FROM zsd_cliente
    WHERE zclinr = gd_zclinr.

    IF sy-subrc <> 0.
     MESSAGE |O cliente { gd_zclinr } não existe | TYPE  'E'.
     EXIT.
    ENDIF.

    CALL SCREEN 9000.
ENDFORM.

FORM inserir.
  gs_cliente-erdat = sy-datum.
  gs_cliente-erzet = sy-uzeit.

  INSERT zsd_cliente FROM gs_cliente.
  IF sy-subrc = 0.
      MESSAGE 'Cliente inserido com sucesso' TYPE 'S'.
  ELSE.
    MESSAGE 'Erro em inserir   cliente' TYPE 'S' DISPLAY LIKE 'E'.
  ENDIF.
ENDFORM.
