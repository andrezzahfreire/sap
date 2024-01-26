### Resumo
Este vídeo aborda a implementação de um "screen exit" em ABAP, focando especificamente em um "screen XD" que permite a personalização de telas dentro de um programa padrão. O tutorial demonstra dois métodos para implementar um "screen exit": modificando a tela diretamente no programa padrão ou usando a transação SE80. O apresentador guia os espectadores na localização de uma tela específica, adicionando campos e criando funcionalidades para exibir o número de pedidos e seu valor total para um cliente específico.

### Analogia
Implementar um "screen exit" em ABAP é semelhante a personalizar a tela inicial de um smartphone. O programa padrão representa o layout padrão, e um "screen XD" funciona como uma tela em branco onde os usuários podem adicionar campos (widgets), botões e tabelas para adaptar sua experiência. Assim como alguém pode rearranjar e adicionar recursos à tela inicial do telefone, os desenvolvedores podem personalizar telas no ambiente ABAP.

### Notas

- 🖥️ "Screen Exit" (XD): Permite a personalização de telas dentro de um programa ABAP padrão.
- 🔄 Dois Métodos de Implementação: Modificação direta no programa padrão ou uso da transação SE80.
- 🛠️ Adicionando Campos: Demonstra como adicionar campos a uma tela específica dentro de um programa padrão.
- 🔄 "Screen XD" como uma Tela em Branco: É uma forma de personalizar telas adicionando elementos como campos, botões e tabelas.
- 🔄 Caso de Uso: Modificando uma tela no programa SAP MV45A para exibir o número de pedidos e seu valor total para um cliente específico.
- 🗂️ Localizando a Tela: Localizando a tela (por exemplo, 8309) no programa usando a transação SE80.
- 🧩 Criação de Estrutura: Criando uma estrutura dinâmica (por exemplo, ZZ_GLOBAL_INFO) para armazenar dados para exibição.
- 🔄 Manipulação de Eventos: Criando módulos PBO (Process Before Output) e PAI (Process After Input) para lidar com interações do usuário.
- 📊 Consulta ao Banco de Dados: Usando consultas SQL para recuperar informações, como o número de pedidos e seu valor total, de tabelas relevantes.
- 🧰 Melhores Práticas de Personalização: Respeitar áreas reservadas, usar convenções de nomenclatura adequadas e garantir autorização correta para modificações.

### Palavras-chave

- **"Screen Exit" (XD):** Método na programação ABAP que permite a personalização de telas dentro de um programa padrão.
  - *Explicação:* "Screen exits" oferecem flexibilidade para adaptar programas padrão a requisitos específicos, adicionando campos, botões e outros elementos de interface.

- **Transação SE80:**
  - *Explicação:* SE80 é um código de transação no SAP usado para tarefas no banco de desenvolvimento, incluindo modificação e personalização de programas ABAP.

- **PBO (Process Before Output):**
  - *Explicação:* PBO é um evento na programação ABAP que ocorre antes da exibição da tela, permitindo que os desenvolvedores manipulem elementos e dados da tela.

- **PAI (Process After Input):**
  - *Explicação:* PAI é um evento na programação ABAP que ocorre após a entrada do usuário, proporcionando a oportunidade de processar dados e acionar ações.

- **Tela 8309:**
  - *Explicação:* Refere-se a uma tela específica dentro do programa SAP MV45A, alvo de personalização no tutorial.

- **Estrutura Dinâmica (ZZ_GLOBAL_INFO):**
  - *Explicação:* Uma estrutura criada dinamicamente no programa ABAP para armazenar dados a serem exibidos na tela personalizada.

- **Consulta SQL:**
  - *Explicação:* Linguagem de consulta estruturada usada para recuperar dados de um banco de dados, empregada no tutorial para buscar informações relacionadas a pedidos.

- **"Screen XD" como Tela em Branco:**
  - *Explicação:* A analogia destaca as possibilidades de personalização de um "screen XD", comparando-a à personalização da tela inicial de um smartphone.

- **Caso de Uso do "Screen XD":**
  - *Explicação:* O exemplo prático no vídeo envolve a modificação de uma tela no programa SAP MV45A para exibir informações relacionadas a pedidos para um cliente específico.

- **Melhores Práticas de Personalização:**
  - *Explicação:* Recomendações para personalização efetiva, incluindo respeitar áreas reservadas, usar convenções de nomenclatura adequadas e garantir autorização correta.
