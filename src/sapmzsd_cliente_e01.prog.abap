MODULE pbo_9000 OUTPUT.
    CLEAR gd_okcode.
    SET PF-STATUS 'S9000'.

    IF sy-tcode = 'ZSD002'.
      SET TITLEBAR  'NEW'.
    ENDIF.

    IF sy-tcode = 'ZSD003'.
      SET TITLEBAR  'EDIT'.

      LOOP AT SCREEN.
        IF screen-name = 'GS_CLIENTE-ZCLINR'.
          screen-input = 0.
          MODIFY SCREEN.
        ENDIF.
      ENDLOOP.

    ENDIF.

ENDMODULE.

MODULE pai_9000 INPUT.
  CASE gd_okcode.
    WHEN 'BACK'.
       LEAVE.
       LEAVE TO SCREEN 0.
    WHEN 'SAVE'.
        IF sy-tcode = 'ZSD002'.
          PERFORM inserir.
    ENDIF.

    IF sy-tcode = 'ZSD003'.
      PERFORM modificar.
    ENDIF.
  ENDCASE.
ENDMODULE.
