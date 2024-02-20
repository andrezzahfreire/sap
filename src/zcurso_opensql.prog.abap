REPORT ZCURSO_OPENSQL.
* introdução
*   sql nativo e comandos sap
*  o que é um banco de dados
*   onde se armazena as informações do sistema
*quais bancos de dados o sap usa
* nos atuais apenas o sap hana
*o que é open sql
*    comandos abap de sql

DATA : lt_scarr TYPE STANDARD TABLE OF scarr.
DATA: ls_scarr TYPE scarr.

**select
*    SELECT *
*      INTO TABLE lt_scarr
*        FROM scarr.
*
*LOOP AT lt_scarr INTO ls_scarr.
*    WRITE ls_scarr-carrid.
*    WRITE ls_scarr-carrname.
*ENDLOOP.
*
*BREAK-POINT.

**insert
*CLEAR ls_scarr.
*ls_scarr-carrid = 'Z1'.
*ls_scarr-carrname = 'Gol linhas aéreas'.
*
*INSERT scarr FROM ls_scarr.

* o sy-subc tem que ser 0

**UPDATE
*CLEAR ls_scarr.
*ls_scarr-carrid = 'Z1'.
*ls_scarr-carrname = 'Gol Linhas aéreas 2'.
*ls_scarr-currcode = 'BRL'.
*MODIFY scarr FROM ls_scarr.
*
*UPDATE scarr
*    set carrname = ls_scarr-carrname
*        currcode = ls_scarr-currcode
*    WHERE carrid = ls_scarr-carrid.

* delete
DELETE FROM scarr WHERE carrid = 'Z1'.
