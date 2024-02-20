MODULE pbo_9000 OUTPUT.
 SET PF-STATUS 'S9000'.
 SET TITLEBAR 'T9000'.
ENDMODULE.

MODULE pai_9000 INPUT.
    CASE sy-ucomm.

      WHEN  'US'.
              SELECT *
                   INTO TABLE gt_stravelag
                   FROM stravelag
                    WHERE country = 'US'.
     WHEN  'TODAS'.
              SELECT *
                   INTO TABLE gt_stravelag
                   FROM stravelag.
     WHEN 'BACK'.
          LEAVE TO SCREEN 0.
    ENDCASE.
ENDMODULE.

*&SPWIZARD: OUTPUT MODULE FOR TC 'TC9000'. DO NOT CHANGE THIS LINE!
*&SPWIZARD: UPDATE LINES FOR EQUIVALENT SCROLLBAR
MODULE TC9000_CHANGE_TC_ATTR OUTPUT.
  DESCRIBE TABLE GT_STRAVELAG LINES TC9000-lines.
ENDMODULE.
