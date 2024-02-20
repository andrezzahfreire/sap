REPORT ZTESTE123.
*11/12/2023
*dump é um erro
*st22

START-OF-SELECTION.
    DATA: lt_scarr TYPE STANDARD TABLE OF scarr.
    DATA: ls_scarr  TYPE scarr.
    DATA: ld_nome   TYPE string.

    ld_nome = 'José'.

    SELECT SINGLE *
        INTO ls_scarr
        FROM scarr.

    SELECT *
        INTO TABLE lt_scarr
        FROM scarr.

*    BREAK-POINT

      MESSAGE 'teste' TYPE ld_nome.

      DATA: ld_int TYPE i.
      ld_int = 1 / 0.

*SELECTION-SCREEN BEGIN OF BLOCK main WITH FRAME.
*    PARAMETERS p_flag TYPE flag.
*SELECTION-SCREEN END OF BLOCK MAIN.
