*&---------------------------------------------------------------------*
*& Report ZCURSO_009 Aula 11
*&---------------------------------------------------------------------*
*& Switch case
*&---------------------------------------------------------------------*
REPORT ZCURSO_009.

SELECTION-SCREEN BEGIN OF BLOCK bi.
    PARAMETER p_cat(1) TYPE c.
SELECTION-SCREEN END OF BLOCK bi.

START-OF-SELECTION.
    case p_cat.
      WHEN 'A'.
         WRITE 'Moto'.
      WHEN 'B'.
         WRITE 'Carro'.
      WHEN 'C'.
         WRITE 'Veículo de carga'.
      WHEN 'D'.
         WRITE 'Transporte de passageiros'.
      WHEN 'E'.
         WRITE 'Caminhões'.
      WHEN OTHERS.
        WRITE: 'Categoria invalida'.
ENDCASE.
