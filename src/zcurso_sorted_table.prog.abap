
REPORT ZCURSO_SORTED_TABLE.

* sorted table



* introdução

* tabela com uma ou mais chaves

* criando tabela ordenada

START-OF-SELECTION.
    DATA lt_scarr1 TYPE SORTED TABLE OF scarr WITH UNIQUE KEY carrid.
    DATA lt_scarr2 TYPE SORTED TABLE OF scarr WITH NON-UNIQUE KEY carrname.
    DATA lt_scarr3 TYPE SORTED TABLE OF scarr
          WITH UNIQUE KEY carrid " chave primária
          WITH NON-UNIQUE SORTED KEY key2 COMPONENTS currcode carrname "chave secundária
          WITH NON-UNIQUE SORTED KEY key3 COMPONENTS carrname. " chave secundária

BREAK-POINT.

*Preenchendo uma tabela

    DATA ls_scarr TYPE scarr.

    DATA lt_scarr4 TYPE STANDARD TABLE OF scarr.

    CLEAR ls_scarr.
    ls_scarr-carrid = 1.
    ls_scarr-carrname = 'TAM'.

    INSERT ls_scarr INTO TABLE lt_scarr1.
    INSERT ls_scarr INTO TABLE lt_scarr2.
    INSERT ls_scarr INTO TABLE lt_scarr3.
    APPEND ls_scarr to lt_scarr4.

*append não ordenado dá dump

    CLEAR ls_scarr.
    ls_scarr-carrid = 2.
    ls_scarr-carrname = 'GOL'.

    INSERT ls_scarr INTO TABLE lt_scarr1.
    INSERT ls_scarr INTO TABLE lt_scarr2.
    INSERT ls_scarr INTO TABLE lt_scarr3.
    APPEND ls_scarr to lt_scarr4.

    CLEAR ls_scarr.
    ls_scarr-carrid = 3.
    ls_scarr-carrname = 'AZUL'.

    INSERT ls_scarr INTO TABLE lt_scarr1.
    INSERT ls_scarr INTO TABLE lt_scarr2.
    INSERT ls_scarr INTO TABLE lt_scarr3.
    APPEND ls_scarr to lt_scarr4.

    BREAK-POINT.

*   Buscando dados
    BREAK-POINT.
    CLEAR ls_scarr.
    READ TABLE lt_scarr1 INTO ls_scarr WITH TABLE KEY carrid = 2.

    CLEAR ls_scarr.
    READ TABLE lt_scarr2 INTO ls_scarr WITH TABLE KEY carrname = 'Azul'.

    CLEAR ls_scarr.
    READ TABLE lt_scarr3 INTO ls_scarr WITH TABLE KEY carrid = 3.

    CLEAR ls_scarr.
    READ TABLE lt_scarr3 INTO ls_scarr WITH TABLE KEY key2 COMPONENTS currcode = '' carrname = 'GOL'.

    CLEAR ls_scarr.
    READ TABLE lt_scarr3 INTO ls_scarr WITH TABLE KEY key3 COMPONENTS carrname = 'TAM'.

    BREAK-POINT.
