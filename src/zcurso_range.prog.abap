
REPORT ZCURSO_RANGE.

* 05/12/2023
* o que é um range
*  é um filtro avançado


*
*BREAK-POINT.
DATA ld_kunnr TYPE RANGE OF kunnr.
* não aceita campo direto

SELECTION-SCREEN BEGIN OF BLOCK bi.
    SELECT-OPTIONS s_kunnr FOR ld_kunnr.
SELECTION-SCREEN BEGIN OF BLOCK bi.

START-OF-SELECTION.
    BREAK-POINT.
