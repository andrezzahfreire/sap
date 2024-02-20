*&---------------------------------------------------------------------*
*& Report ZCURSO_003
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zcurso_003.

"Declaração de variáveis
DATA ld_id         TYPE i.            "numero
DATA ld_nome(100)  TYPE c.            "texto
DATA ld_dtnasc     TYPE d.            "data
DATA ld_hrnasc     TYPE t.            "hora
DATA ld_peso(6)    TYPE p DECIMALS 3. "numero com decimais
DATA ld_desc       TYPE string.       "texto
DATA ld_login(5)   TYPE n.            "numero 00001


" Preenchendo as variáveis

ld_Id = 1.
ld_nome = 'JOSÈ DA SILVA '.
ld_dtnasc = '190201'.
ld_hrnasc = '153512'.
ld_peso = '80.000'.
ld_desc = 'Um cliente que compra em grande volume'.
ld_login = '1'.

WRITE 'Dados do cliente'.
NEW-LINE.

WRITE (12)  'id:'.
WRITE  ld_id  LEFT-JUSTIFIED.
NEW-LINE.

WRITE (12) 'Nome: '.
WRITE  ld_nome.
NEW-LINE.

WRITE (12) 'Nascimento:'.
WRITE  ld_dtnasc DD/MM/YYYY.
WRITE  ld_hrnasc+0(2).
WRITE  ':'.
WRITE  ld_hrnasc+2(2).
WRITE  ':'.
WRITE  ld_hrnasc+4(2).
NEW-LINE.

WRITE (12) 'Nascimento:'.
WRITE  ld_dtnasc DD/MM/YYYY.
WRITE: ld_hrnasc+0(2),':',ld_hrnasc+2(2), ':', ld_hrnasc+4(2).

NEW-LINE.

WRITE (12) 'Peso:'.
WRITE  ld_peso  LEFT-JUSTIFIED.
NEW-LINE.

WRITE (12) 'Descrição:'.
WRITE  ld_desc.
NEW-LINE.

WRITE (12) 'Login:'.
WRITE  ld_login.
NEW-LINE.
