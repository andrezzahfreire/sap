START-OF-SELECTION.

ld_media = ( p_1bim + p_2bim + p_3bim + p_4bim  ) / 4.

IF ld_media >= 0 AND ld_media <= 50.
    WRITE: 'Sua nota foi muito baixa , voce foi reprovado!' .
ELSEIF ld_media >= 51 AND ld_media <= 59.
    WRITE: 'Voce quase passou estude um pouco mais'.
ELSEIF ld_media >= 60 AND ld_media <= 100.
    WRITE: 'Parabens, voce passou'.
ELSE.
  WRITE: 'Sua nota é inválida'.
ENDIF.
