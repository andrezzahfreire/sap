*
* Autor Vinicius Cesar Dias
* Última atualização 09/08/2023 v0.1
*
REPORT ZTEXTAREA.

DATA: gd_debug    TYPE flag. " Variável para controle de depuração
DATA: go_textarea TYPE REF TO zcl_textarea. " Instância da classe zcl_textarea

START-OF-SELECTION.
  go_textarea = new zcl_textarea( id_container = 'TEXTAREA1' ). " Instancia um objeto da classe zcl_textarea com um ID de contêiner específico

  CALL SCREEN 9000. " Chama a tela de número 9000

MODULE pbo_9000 OUTPUT. " Módulo de saída para a tela 9000
  SET PF-STATUS 'S9000'. " Define o status da barra de funções
  SET TITLEBAR 'T9000'. " Define o título da barra de título

  go_textarea->callme_in_pbo( ). " Chama um método da instância go_textarea
ENDMODULE.

MODULE pai_9000 INPUT. " Módulo de entrada para a tela 9000
  CASE sy-ucomm. " Início do tratamento de eventos do usuário
  WHEN 'LOAD'. " Quando o botão 'LOAD' é pressionado
    PERFORM load. " Chama o formulário load
  WHEN 'SAVE'. " Quando o botão 'SAVE' é pressionado
    PERFORM save. " Chama o formulário save
  WHEN 'LOAD1'. " Quando o botão 'LOAD1' é pressionado
    PERFORM load1. " Chama o formulário load1
  WHEN 'SAVE1'. " Quando o botão 'SAVE1' é pressionado
    PERFORM save1. " Chama o formulário save1
  WHEN 'BACK' OR 'UP' OR 'CANCEL'. " Quando qualquer um desses botões é pressionado
    LEAVE TO SCREEN 0. " Sai para a tela inicial
  ENDCASE. " Fim do tratamento de eventos do usuário
ENDMODULE.

FORM load1. " Formulário para carregar dados específicos
  DATA: ls_header TYPE thead. " Declaração de uma estrutura para cabeçalho

  CLEAR ls_header. " Limpa a estrutura de cabeçalho
  ls_header-tdid     = 'Z001'. " Define o ID do texto
  ls_header-tdname   = '1'. " Define o nome do texto
  ls_header-tdobject = 'ZTX01'. " Define o objeto do texto
  ls_header-tdspras  = 'E'. " Define o idioma do texto

  IF gd_debug = 'X'. " Verifica se a depuração está ativada
    BREAK-POINT. " Ponto de interrupção para depuração
  ENDIF.

  go_textarea->load_text( is_header = ls_header ). " Chama o método load_text da instância go_textarea com o cabeçalho especificado
ENDFORM.

FORM save1. " Formulário para salvar dados específicos
  DATA: ls_header TYPE thead. " Declaração de uma estrutura para cabeçalho

  CLEAR ls_header. " Limpa a estrutura de cabeçalho
  ls_header-tdid     = 'Z001'. " Define o ID do texto
  ls_header-tdname   = '1'. " Define o nome do texto
  ls_header-tdobject = 'ZTX01'. " Define o objeto do texto
  ls_header-tdspras  = 'E'. " Define o idioma do texto

  IF gd_debug = 'X'. " Verifica se a depuração está ativada
    BREAK-POINT. " Ponto de interrupção para depuração
  ENDIF.

  go_textarea->save_text( is_header = ls_header ). " Chama o método save_text da instância go_textarea com o cabeçalho especificado
ENDFORM.

FORM load. " Formulário para carregar dados genéricos
  DATA: lt_text TYPE STANDARD TABLE OF char255. " Declaração de uma tabela interna para o texto

  IF gd_debug = 'X'. " Verifica se a depuração está ativada
    BREAK-POINT. " Ponto de interrupção para depuração
  ENDIF.

  APPEND 'Linha 1' TO lt_text. " Adiciona uma linha à tabela interna
  APPEND 'Linha 2' TO lt_text. " Adiciona outra linha à tabela interna
  APPEND 'Linha 3' TO lt_text. " Adiciona outra linha à tabela interna
  APPEND '' TO lt_text. " Adiciona uma linha em branco à tabela interna
  APPEND 'Coluna 1 coluna 2 coluna 3 etc' TO lt_text. " Adiciona outra linha à tabela interna

  go_textarea->set_table_text( it_text = lt_text ). " Define o texto na área de texto com base na tabela interna
ENDFORM.

FORM save. " Formulário para salvar dados genéricos
  DATA: lt_text TYPE STANDARD TABLE OF char255. " Declaração de uma tabela interna para o texto

  IF gd_debug = 'X'. " Verifica se a depuração está ativada
    BREAK-POINT. " Ponto de interrupção para depuração
  ENDIF.

  go_textarea->get_table_text( " Obtém o texto da área de texto para a tabela interna
    IMPORTING
      et_text = lt_text
  ).
ENDFORM.
