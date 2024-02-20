*&---------------------------------------------------------------------*
*& Report ZCURSO_005
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZCURSO_005.
"aula 8
DATA ld_nome(100)  TYPE c.
DATA ld_sobrenome(100) TYPE c.
DATA ld_nomecompleto(201) TYPE c.

ld_nome = 'vinicius'.
ld_sobrenome  = 'cesar  dias'.

CONCATENATE ld_nome ld_sobrenome
    into ld_nomecompleto SEPARATED BY ' '.

ld_nomecompleto = |{  ld_nome } {  ld_sobrenome  } |.
write 'Convite para a festa'.
SKIP.

WRITE 'olá'.
WRITE ld_nomecompleto.
WRITE ':'.
NEW-LINE.
SKIP.
WRITE 'Voce foi convidado para a festa de fim de ano, contamos com a sua presença!'.
NEW-LINE.

WRITE 'Atensiosamente,'.
NEW-LINE.
SKIP.

WRITE 'EMPRESA XYZ'.
NEW-LINE.
