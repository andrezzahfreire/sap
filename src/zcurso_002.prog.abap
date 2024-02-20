*&---------------------------------------------------------------------*
*& Report ZCURSO_002
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZCURSO_002.

START-OF-SELECTION .
  DATA: lt_data TYPE STANDARD TABLE OF saplane.
  DATA: ls_data TYPE saplane.

  SELECT *
      INTO TABLE lt_data
      FROM saplane.


  LOOP AT  lt_data INTO ls_data.
    WRITE  ls_data-planetype.
    WRITE  ls_data-producer.
    NEW-LINE.
  ENDLOOP.
