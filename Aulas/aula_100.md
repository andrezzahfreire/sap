### Resumo

Neste vídeo, Vinícius discute o conceito de joins no contexto da linguagem de programação ABAP. Joins são operações suportadas pelo comando SELECT em um banco de dados, que combinam duas tabelas para criar uma terceira tabela temporária. Vinícius aborda os dois principais tipos de joins: Inner Join e Left Join. Ele demonstra a implementação prática de joins usando exemplos, explicando o processo passo a passo. Além disso, ele introduz o uso de aliases (apelidos) para campos e tabelas a fim de evitar ambiguidades.

### Analogia

Imagine dois conjuntos de livros, um sobre voos (spfli) e outro sobre aeroportos (S Aeroporto). Para correlacionar informações, você deseja descobrir quais aeroportos estão associados a voos específicos. Usar joins é semelhante a mesclar esses conjuntos com base em um atributo comum, como a correspondência de aeroportos de origem de voos. O Inner Join traz apenas pares correspondentes, enquanto o Left Join inclui todos os voos, mesmo se a informação do aeroporto estiver ausente.

### Notas

- 💡 **Inner Join vs. Left Join**: Inner Join recupera registros correspondentes de ambas as tabelas, enquanto o Left Join inclui todos os registros da tabela da esquerda e os correspondentes da direita, preenchendo valores ausentes com nulo.
- 💡 **Apelidos (Aliases)**: Apelidos são usados para evitar conflitos de nomenclatura entre campos em tabelas diferentes. Eles fornecem uma referência abreviada para campos ou tabelas.
- 💡 **Ambiguidade (Ambiguity)**: Ao lidar com nomes de campos semelhantes em diferentes tabelas, o uso de aliases resolve ambiguidades e esclarece a qual tabela um campo pertence.

### Palavras-chave

- **Join**: Uma operação de banco de dados que combina linhas de duas ou mais tabelas com base em uma coluna relacionada.
  - *Explicação*: Joins são essenciais para recuperar dados correlacionados de várias tabelas em um banco de dados, aprimorando a flexibilidade das consultas.
- **Inner Join**: Recupera linhas onde há uma correspondência em ambas as tabelas com base em condições especificadas.
  - *Explicação*: Inner Join exclui registros não correspondentes do conjunto de resultados.
- **Left Join**: Recupera todas as linhas da tabela da esquerda e as linhas correspondentes da tabela da direita, preenchendo áreas não correspondentes com valores nulos.
  - *Explicação*: Left Join garante que todos os registros da tabela da esquerda estejam incluídos no conjunto de resultados.
- **Alias (Apelido)**: Um nome abreviado atribuído a um campo ou tabela para evitar conflitos de nomenclatura.
  - *Explicação*: Aliases são úteis ao lidar com nomes de campos semelhantes em diferentes tabelas, melhorando a legibilidade do código.

### Acrônimos

- **ABAP**: Programação Avançada de Aplicações de Negócios.
  - *Explicação*: ABAP é uma linguagem de programação de alto nível usada para o desenvolvimento de aplicativos SAP.
- **ID**: Identificador.
  - *Explicação*: ID é um acrônimo comum para um identificador único em bancos de dados, frequentemente usado em joins para correlacionar registros.
