REPORT ZCURSO_TYPES.
* 04/12/2023
* introdução
* criar tipos customiados
* vantagens = reutilizar

** tipos simples
*TYPES ly_nome TYPE char100.
*
*DATA ld_nome1 TYPE ly_nome.
*DATA ld_nome2 TYPE ly_nome.
*
*ld_nome = 'José'.
*
*BREAK-POINT.

** tipos para estrutura
*
*TYPES ly_scarr TYPE scarr.
*
*DATA ls_scarr TYPE ly_scarr.
*
*BREAK-POINT.
*
** tipo tabela interna
*TYPES ly_scarr_tab TYPE STANDARD TABLE OF scarr.
*
*DATA lt_scarr TYPE ly_scarr_tab.
*
*BREAK-POINT.

** tipo para range
*TYPES ly_carrid_r TYPE RANGE OF scarr-carrid.
*
*DATA lt_carrid_r TYPE ly_carrid_r.
*
*BREAK-POINT.

** tipo para uma estrutura personalizada
*TYPES: BEGIN OF ly_scarr
*  , id TYPE scarr-carrid
*  , nome TYPE scarr-carrname
*  , END OF ly_scarr.
*
*  DATA ls_scarr TYPE ly_scarr.
*
*  BREAK-POINT.

* tipo de um tipo
*
*TYPES ly_scarr TYPE scarr.
*TYPES ly_scarr_tab TYPE STANDARD TABLE OF ly_scarr.
*
*DATA ls_scarr TYPE ly_scarr.
*DATA lt_scarr TYPE ly_scarr_tab.
*
*BREAK-POINT.

*tipo com include de estrutura

*TYPES: BEGIN OF ly_scarr
*  ,id TYPE i.
*  INCLUDE TYPE scarr.
*TYPES: END OF ly_scarr.
*
*DATA: ls_scarr TYPE ly_scarr.
*
*BREAK-POINT.
*

* tipo com estrutura e tabela
*
*TYPES ly_scarr_tab TYPE STANDARD TABLE OF scarr WITH NON-UNIQUE KEY carrid.
*
*TYPES: BEGIN OF ly_scarr
*  , id    TYPE i
*  , scarr TYPE scarr
*  , scarr_tab TYPE ly_scarr_tab
*  , END OF ly_scarr.
*
*  DATA: ls_scarr TYPE ly_scarr.
*
*  BREAK-POINT.

* Open SQL

* Introdução
* O que é um banco de dados
* quais os bancos o sap usa
* sap synabase
* sap maxdb
* ibm db2
*microsoft sql server
*oracle
*sap hana
*o que é open sql
* comandos sql dentro do ambiente sap

DATA: lt_scarr TYPE STANDARD TABLE OF scarr.
DATA: ls_scarr TYPE scarr.
SELECT *
  INTO TABLE lt_scarr
    FROM scarr.

 LOOP AT lt_scarr INTO ls_scarr.
   WRITE ls_scarr-carrid.
   WRITE ls_scarr-carrname.
   NEW-LINE.
 ENDLOOP.
