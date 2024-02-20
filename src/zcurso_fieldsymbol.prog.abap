REPORT ZCURSO_FIELDSYMBOL.

*Introdução
* fieldsymbol é uma referencia lembra ponteiros do c
* ld = local data
* alt + f5 = proximo passo debug

* funcionamento básico
*DATA: ld_text TYPE char100.
*
*ld_text = 'Teste'.
*
*FIELD-SYMBOLS <ld_text> TYPE char100.
*
*ASSIGN ld_text TO <ld_text>.

** limpando uma referencia
*UNASSIGN <ld_text>.
*
** Verificando se um field ymbol tem uma referencia
*IF <ld_text> IS ASSIGNED.
*      WRITE 'Tem referencia'.
*    ELSE.
*       WRITE 'Tem referencia'.
*ENDIF.

* fild sybol com variavel simples

*DATA: ld_number TYPE i.
*FIELD-SYMBOLS <ld_number> TYPE i.
*
*ASSIGN ld_number TO <ld_number>.
*
*UNASSIGN <ld_text>.

* field symbols com variaveis com estruturas
*DATA: ls_scarr TYPE scarr.
*FIELD-SYMBOLS: <ls_scarr> TYPE scarr.
*
*ls_scarr-carrid = 1.
*ls_scarr-carrname = 'Teste'.
*
*ASSIGN ls_scarr TO <ls_scarr>.
*BREAK-POINT.

* field symbols com variáveis com tabelas

*DATA: lt_scarr TYPE STANDARD TABLE OF scarr.
*DATA: ls_scarr TYPE scarr.
*
*FIELD-SYMBOLS <ls_scarr> TYPE scarr.
*
*BREAK-POINT.
*
*SELECT *
*    FROM scarr
*    INTO TABLE lt_scarr.
*
*LOOP AT lt_scarr ASSIGNING <ls_scarr>.
*    WRITE <ls_scarr>-carrname.
*ENDLOOP.
*
*BREAK-POINT.

* field com variáveis com tabelas
*DATA: lt_scarr TYPE STANDARD TABLE OF scarr.
*
*FIELD-SYMBOLS <lt_scarr> LIKE lt_scarr.
*
*BREAK-POINT.
*
*ASSIGN lt_scarr TO <lt_scarr>.
*
*
*SELECT *
*    FROM scarr
*    INTO TABLE lt_scarr.
*
*BREAK-POINT.

* field symbols com variáveis dinamicas

*DATA: ld_varname TYPE char100.
*DATA: ld_text TYPE char100.
*
*FIELD-SYMBOLS <ld_text> TYPE char100.
*
*BREAK-POINT.
*
*ld_text = 'Teste'.
*ld_varname = 'ld_text'.
*
*
*ASSIGN ld_text      to <ld_text>.
*ASSIGN ld_varname   to <ld_text>.
*ASSIGN ('ld_text')  to <ld_text>.
*
*IF <ld_text> IS ASSIGNED.
*
*ENDIF.
*IF sy-subrc = 0.
*
*ENDIF.

*BREAK-POINT.
* 4 a variável não existe

** Field symbol com variáveis dinamicas em outros programas
*DATA: ld_varname TYPE char100.
*DATA: ld_text TYPE char100.
*
*FIELD-SYMBOLS <ld_text> TYPE char100.
*
*BREAK-POINT.
*
*ld_text     = 'Teste'.
*ld_varname  = '(ZCURSO_FIELDSYMBOL) ld_text'.
*
*ASSIGN ('ld_text')  to <ld_text>.
*
*BREAK-POINT.


* inserir uma linha na tabela apartir do field synbol
*DATA lt_scarr TYPE STANDARD TABLE OF SCARR.
*
*FIELD-SYMBOLS <ls_scarr> TYPE scarr.
*
*BREAK-POINT.
*
*INSERT INITIAL LINE INTO TABLE lt_scarr ASSIGNING <ls_scarr>.
*
*BREAK-POINT.

DATA ld_text TYPE char100.

FIELD-SYMBOLS <ld_text> TYPE ANY.

BREAK-POINT.

ASSIGN ld_text TO <ld_text>.

BREAK-POINT.
