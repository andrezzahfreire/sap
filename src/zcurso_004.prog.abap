*&---------------------------------------------------------------------*
*& Report ZCURSO_004
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZCURSO_004.

CONSTANTS lc_pi(12) TYPE p DECIMALS 13 VALUE '3.14'.

DATA ld_raio(12) TYPE p DECIMALS 2.
DATA ld_area(12) TYPE p DECIMALS 2.

ld_raio = 10.
ld_area = ( ld_raio * ld_raio ) * lc_pi.

WRITE : 'A área de um circulo com raio de', ld_raio,'é',ld_area.
