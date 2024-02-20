FORM calcular_media
  USING ud_1bim ud_2bim ud_3bim ud_4bim.
  CHANGING  cd_media.
  DATA ld_media(12) TYPE p DECIMALS 2.
  ld_media = ( p_1bim + p_2bim + p_3bim + p_4bim  ) / 4.
  cd_media = ld_media.
ENDFORM.

FORM escrever_mensagem.
      IF gd_media >= 0 AND gd_media <= 50.
    WRITE: 'Sua nota foi muito baixa , voce foi reprovado!' .
    ELSEIF gd_media >= 51 AND gd_media <= 59.
    WRITE: 'Voce quase passou estude um pouco mais'.
    ELSEIF gd_media >= 60 AND gd_media <= 100.
    WRITE: 'Parabens, voce passou'.
    ELSE.
       WRITE: 'Sua nota é inválida'.
    ENDIF.
 ENDFORM.
