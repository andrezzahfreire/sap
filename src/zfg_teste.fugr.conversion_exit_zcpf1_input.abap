FUNCTION CONVERSION_EXIT_ZCPF1_INPUT.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(INPUT)
*"  EXPORTING
*"     REFERENCE(OUTPUT)
*"----------------------------------------------------------------------

DATA ld_temp TYPE string.

ld_temp = input.

REPLACE ALL OCCURRENCES OF '[^0-9]' IN input WITH ''.

IF ld_temp = ''.
  EXIT.
ENDIF.

IF strlen( ld_temp ) <> 11.
    MESSAGE 'CPF inválido' TYPE 'E'.
    EXIT.
ENDIF.

output = ld_temp.

ENDFUNCTION.
