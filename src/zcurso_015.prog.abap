REPORT ZCURSO_015.

* introdução
* o que é um comando de repetição

DATA: lt_plane TYPE STANDARD TABLE OF saplane.
DATA: ls_plane TYPE saplane.

DATA: lt_scarr TYPE STANDARD TABLE OF scarr.
DATA: ls_scarr TYPE scarr.

DATA: lt_spfli TYPE STANDARD TABLE OF spfli.
DATA: ls_spfli TYPE spfli.

* Carregando dados

* Aviões
SELECT *
    INTO TABLE lt_plane
    FROM saplane.

* Companhias aéreas
SELECT *
    INTO TABLE lt_scarr
    FROM scarr.

* Aviões
SELECT *
    INTO TABLE lt_spfli
    FROM spfli.

*BREAK-POINT.

*Loop at.

*WRITE 'Loop at'.
*NEW-LINE.
*LOOP AT lt_plane into ls_plane WHERE seatsmax > 200.
**    WRITE: 'sy-index', sy-index.
**    WRITE: 'sy-tabix', sy-tabix.
*
*    WRITE: ls_plane-planetype, ls_plane-seatsmax.
*
*    NEW-LINE.
*ENDLOOP.

* while
WRITE 'While'.

*WHILE sy-index <= lines( lt_plane ).
**    WRITE: 'sy-index', sy-index.
**    WRITE: 'sy-tabix', sy-tabix.
*
*    READ TABLE lt_plane INTO ls_plane INDEX sy-index.
*    WRITE: ls_plane-planetype, ls_plane-seatsmax.
*
*    NEW-LINE.
*ENDWHILE.

* DO
*WRITE 'DO x Times'.
*NEW-LINE.
*DO 3 TIMES.
*
**    WRITE: 'sy-index', sy-index.
**    WRITE: 'sy-tabix', sy-tabix.
*
*    READ TABLE lt_plane INTO ls_plane INDEX sy-index.
*    WRITE: ls_plane-planetype, ls_plane-seatsmax.
*
*    NEW-LINE.
*
*ENDDO.

* Loop dentro de loop

*WRITE 'Loop dentro de loop'.
*NEW-LINE.
*SKIP.
*LOOP AT lt_scarr INTO ls_scarr.
*    WRITE: ls_scarr-carrname.
*    WRITE: sy-uline.
*
*    LOOP AT lt_spfli INTO ls_spfli WHERE carrid = ls_scarr-carrid.
*        WRITE: ls_spfli-cityfrom, ls_spfli-cityto.
*        NEW-LINE.
*    ENDLOOP.
*
*    SKIP.
*ENDLOOP.
*
*WRITE 'Fim'.


* parando um loop com exit

*WRITE: 'Parando um loop'.
*NEW-LINE.
*
*LOOP AT lt_plane INTO ls_plane.
*    WRITE: ls_plane-planetype, ls_plane-seatsmax.
*
*    IF ls_plane-seatsmax > 200.
*        EXIT.
*
*    ENDIF.
*
*    NEW-LINE.
*ENDLOOP.

* interropendo a iteração atual (coninue)

WRITE 'Interropendo a iteração atual'.
NEW-LINE.
LOOP AT lt_plane INTO ls_plane.
    IF ls_plane-seatsmax > 200.
      CONTINUE.
    ENDIF.

    WRITE: ls_plane-planetype,ls_plane-seatsmax.

    NEW-LINE.
ENDLOOP.
