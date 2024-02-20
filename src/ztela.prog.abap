REPORT ZTELA.
  INCLUDE  ZTELA_E01.
START-OF-SELECTION.

CALL SCREEN 9000.


*SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE text-001.
*    PARAMETERS p_pnome TYPE char35.
*    PARAMETERS p_unome TYPE char35.
*    PARAMETERS p_email TYPE char255.
*SELECTION-SCREEN END OF BLOCK b1.
*
*
*SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE text-002.
*    PARAMETERS p_cep TYPE char10.
*    PARAMETERS p_rua TYPE char35.
*    PARAMETERS p_numero TYPE char10.
*    PARAMETERS p_bairro TYPE char255.
*    PARAMETERS p_cidade TYPE char255.
*    PARAMETERS p_uf TYPE char2.
*SELECTION-SCREEN END OF BLOCK b2.
*
*
*SELECTION-SCREEN BEGIN OF BLOCK b3 WITH FRAME TITLE text-003.
*    PARAMETERS p_ativo TYPE flag.
*SELECTION-SCREEN END OF BLOCK b3.*

*    BREAK-POINT.
*    CALL SCREEN 1001 STARTING AT 1 1 ENDING AT 80 12.

*    BREAK-POINT.
*    MESSAGE 'Programa executado' TYPE 'S'.

* status gui é todos os icones ou
*ferramentas que aparecem na barra superior

**&---------------------------------------------------------------------*
**& Module PBO_1001 OUTPUT
**&---------------------------------------------------------------------*
**&
**&---------------------------------------------------------------------*
*MODULE pbo_1001 OUTPUT.
* SET PF-STATUS 'S1001'.
* SET TITLEBAR 'T1001'.
*ENDMODULE.
**&---------------------------------------------------------------------*
**&      Module  PAI_1001  INPUT
**&---------------------------------------------------------------------*
**       text
**----------------------------------------------------------------------*
*MODULE pai_1001 INPUT.
*    CASE sy-ucomm.
*      WHEN 'MSALVAR'.
*          MESSAGE 'Voce clicou no MSALVAR' TYPE 'I'.
*      WHEN 'BACK'.
*        LEAVE  TO SCREEN 0.
*    ENDCASE.
*ENDMODULE.
