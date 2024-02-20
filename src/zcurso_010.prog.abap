*&---------------------------------------------------------------------*
*& Report ZCURSO_010
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZCURSO_010.
"aula 14
SELECTION-SCREEN BEGIN OF BLOCK bi.
    PARAMETER p_cat(1) TYPE c.
SELECTION-SCREEN END OF BLOCK bi.

START-OF-SELECTION.

Data ld_descricao TYPE string.


  CASE  p_cat.
      WHEN 'A'.
         ld_descricao = text-001.
      WHEN 'B'.
          ld_descricao = text-002.
      WHEN 'C'.
         ld_descricao = text-003.
      WHEN 'D'.
         ld_descricao = text-004.
      WHEN 'E'.
        ld_descricao = text-005.
      WHEN OTHERS.
        ld_descricao = text-006.
  ENDCASE.

  WRITE ld_descricao.
