* Ultima atualização 03/08/2023 v0.4
REPORT ZTESTE_XLS.

DATA ld_file     TYPE string.
DATA lt_sairport TYPE STANDARD TABLE OF sairport.

START-OF-SELECTION.
  " BREAK-POINT.

  SELECT *
    INTO TABLE lt_sairport
    FROM sairport.

  " ld_file = 'C:\Users\TI\Downloads\pl.xls'.
  ld_file = '/tmp/data.xls'.

  zcl_xls_utils=>itab_to_xls(
    EXPORTING
      itab     = lt_sairport
      xls_file = ld_file
      "server   = 'X'
    EXCEPTIONS
      others   = 1
  ).

  CLEAR lt_sairport.
  zcl_xls_utils=>xls_to_itab(
    EXPORTING
      xls_file = ld_file
      "server   = 'X'
    IMPORTING
      itab     = lt_sairport
    EXCEPTIONS
      others   = 1
  ).

 " BREAK-POINT.
