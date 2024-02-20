FUNCTION CONVERSION_EXIT_ZCPF1_OUTPUT.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(INPUT)
*"  EXPORTING
*"     REFERENCE(OUTPUT)
*"----------------------------------------------------------------------

DATA ld_temp TYPE string.

ld_temp = input.

REPLACE ALL OCCURRENCES OF REGEX '[0-9]' in ld_temp WITH ''.


IF strlen( ld_temp ) = 11.
  ld_temp = |{ ld_temp(3) }.{ ld_temp+3(3) }.{ ld_temp+6(3) }-{ ld_temp+9(2) }|.

ENDIF.

    output = ld_temp.

ENDFUNCTION.
