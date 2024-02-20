MODULE pbo_9001 OUTPUT.
  CLEAR gd_okcode.

 SET PF-STATUS 'S9001'.

 IF sy-tcode = 'ZSD003'.
   SET TITLEBAR 'MOD'.
 ENDIF.

  IF sy-tcode = 'ZSD004'.
   SET TITLEBAR 'DEL'.
 ENDIF.

ENDMODULE.

MODULE pai_9001 INPUT.
  CASE gd_okcode.
    WHEN 'BACK'.
      LEAVE TO SCREEN 0.
    WHEN 'SAVE' .
    WHEN ''  OR 'EXEC'.
      IF sy-tcode = 'ZSD003'.
          PERFORM modificar_cliente.
      ENDIF.
  IF sy-tcode = 'ZSD004'.
          PERFORM excluir_cliente.
      ENDIF.
  ENDCASE.
ENDMODULE.
