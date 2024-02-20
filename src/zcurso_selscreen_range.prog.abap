REPORT ZCURSO_SELSCREEN_RANGE.

* o qu é select option = é um range mais detalhado

DATA ld_scarnr TYPE scarr-carrid.

SELECTION-SCREEN BEGIN OF BLOCK Bl.
    SELECT-OPTIONS s_scarnr FOR ld_scarnr.
SELECTION-SCREEN END   OF BLOCK Bl.

START-OF-SELECTION.

* usando no select

  DATA lt_scarr TYPE STANDARD TABLE OF scarr.
    BREAK-POINT.

  SELECT *
    INTO TABLE lt_scarr
    FROM scarr
    WHERE carrid IN s_scarnr.

   BREAK-POINT.
