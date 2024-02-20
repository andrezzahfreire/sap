
REPORT ZCURSO_013.
*START-OF-SELECTION.
*  DATA: BEGIN OF ls_cliente
*      , id  TYPE int4
*      , nome(20)  TYPE c
*      , email(50)  TYPE c
*      , END OF ls_cliente.
*
*
**  ls_cliente-id = 1.
**  ls_cliente-email = 'João@gmail.com'.
**  ls_cliente-nome = 'João'.
**
**  WRITE ls_cliente-id.
**  WRITE ls_cliente-email.
**  WRITE ls_cliente-nome.
**
**  NEW-LINE.
*
  START-OF-SELECTION.
  DATA: BEGIN OF ls_localizacao
      , pais(2)     type c
      , uf(2)       type c
      , cidade(20)   type c
      , END OF ls_localizacao.

*      ls_localizacao-pais = 'BR'.
*      ls_localizacao-uf = 'BR'.
*      ls_localizacao-cidade = 'Londrina'.

      ls_localizacao = 'BRBRLONDRINA'.

      WRITE ls_localizacao-pais.
      WRITE ls_localizacao-uf .
      WRITE ls_localizacao-cidade.
