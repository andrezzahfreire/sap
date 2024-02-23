*
* Autor Vinicius Cesar Dias
* Última atualização 10/08/2023 v0.2
*
* Objeto de texto
*
* Procedimento para cadastro
* Transação SE75
* Opção: Text Objects and IDs > Change
* Clique em New
* Informe o Text object, exemplo ZNF01
* Editor application, exemplo TN
* Line width, exemplo 72
* Clique em OK
*
* Marque a linha e clique em Text IDs
* Informe o text ID, exemplo Z001 (Texto da nota fiscal)
* Clique em Salvar
*

REPORT ZOBJETO_TEXTO. " Declaração do relatório ABAP

* Declaração de variáveis
  DATA: ls_header TYPE thead.  " Declaração da estrutura ls_header

  DATA: lt_text TYPE STANDARD TABLE OF tline.  " Declaração de uma tabela padrão de linhas
  DATA: ls_text LIKE LINE OF lt_text.  " Declaração de uma linha semelhante à linha de lt_text

  CLEAR ls_header. " Limpa a estrutura ls_header

* Preenchendo os campos da estrutura ls_header com valores de exemplo
  ls_header-tdobject = 'ZNF01'. " Objeto de texto (por exemplo: Nota Fiscal, Ordem de Venda, Ordem de Compra etc)
  ls_header-tdid     = 'Z001'.  " ID do texto (por exemplo: Texto básico, texto de remessa, texto de fatura etc)
  ls_header-tdname   = '1'.     " Chave primária do objeto (por exemplo: Número da nota fiscal, número da ordem etc)
  ls_header-tdspras  = 'E'.     " Idioma (P = Português, E = Inglês etc)

  BREAK-POINT. " Ponto de interrupção para depuração

* Lendo o objeto de texto
  CLEAR lt_text. " Limpa a tabela de linhas
  PERFORM read. " Chama o formulário read para ler o texto

* Atualizando o objeto de texto
  CLEAR ls_text. " Limpa a linha de texto
  ls_text-tdformat = '*'. " Define o formato do texto como asterisco (poderia ser diferente)
  ls_text-tdline   = |{ sy-datum } { sy-uzeit }|. " Define a linha de texto com a data e hora do sistema
  APPEND ls_text TO lt_text. " Adiciona a linha de texto à tabela de linhas
  PERFORM save. " Chama o formulário save para salvar o texto

* Lendo novamente para conferir
  CLEAR lt_text. " Limpa a tabela de linhas
  PERFORM read. " Chama o formulário read para ler o texto

  BREAK-POINT. " Ponto de interrupção para depuração

FORM read.
* Chamada da função para ler o texto
  CALL FUNCTION 'READ_TEXT'
    EXPORTING
      id                      = ls_header-tdid
      language                = ls_header-tdspras
      name                    = ls_header-tdname
      object                  = ls_header-tdobject
    TABLES
      lines                   = lt_text
    EXCEPTIONS
      id                      = 1
      language                = 2
      name                    = 3
      not_found               = 4
      object                  = 5
      reference_check         = 6
      wrong_access_to_archive = 7.
ENDFORM.

FORM save.
* Chamada da função para salvar o texto
  CALL FUNCTION 'SAVE_TEXT'
    EXPORTING
      header          = ls_header
      savemode_direct = 'X'
    TABLES
      lines           = lt_text
    EXCEPTIONS
      id       = 1
      language = 2
      name     = 3
      object   = 4
      others   = 5.
ENDFORM.
