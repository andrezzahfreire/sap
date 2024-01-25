### Resumo
Este tutorial em vídeo introduz o conceito de Exit de Campo no SAP ABAP. Uma Exit de Campo é uma função personalizada executada automaticamente quando um campo é acessado ou atualizado em uma tela. Ela permite validação, modificação ou lógica adicional antes do processamento de dados. O tutorial demonstra como criar e usar uma Exit de Campo global, abrangendo passos desde o acesso à transação até testá-la em diferentes transações.

### Analogia
Criar uma Exit de Campo é como configurar um ponto de verificação de tráfego antes de um cruzamento. O ponto de verificação (Exit de Campo) verifica e, se necessário, ajusta o tráfego (dados) antes que ele prossiga pelo cruzamento (processamento do sistema). Isso garante que apenas dados válidos e corretamente formatados sigam pela estrada.

### Observações
- 🚧 **Definição de Exit de Campo**: Uma função personalizada executada quando um campo é acessado ou atualizado em uma tela no SAP ABAP.
- 🌐 **Global vs. Específico**: Exits de Campo podem ser globais (afetando todos os programas) ou específicos para determinados programas e telas.
- 🔄 **Ativação**: Exits de Campo precisam ser ativadas, e a ativação pode ser restrita a programas e telas específicos.
- 📝 **Implementação de Lógica**: Pode-se implementar lógica personalizada dentro da Exit de Campo para validar ou modificar dados.
- ⚙️ **Parâmetros**: Exits de Campo têm parâmetros de entrada e saída para manipulação de dados.
- 🚦 **Exemplo de Validação**: O tutorial demonstra um exemplo de validação em que um código de material deve atender a critérios específicos.
- 📊 **Listagem de Exits de Campo**: Os usuários podem listar Exits de Campo existentes vinculadas a um determinado elemento de dados.
- 🔐 **Status de Ativação**: Exits de Campo podem estar ativas ou inativas, influenciando sua funcionalidade.
- 🛑 **Mensagens de Erro**: Em caso de falha na validação, uma mensagem de erro pode ser acionada, impedindo o processamento adicional.
- 🧪 **Testando a Exit de Campo**: O tutorial inclui procedimentos de teste em transações (por exemplo, VA02 e MM02).

### Palavras-chave
- **Exit de Campo**: Uma função personalizada executada automaticamente quando um campo é acessado ou atualizado em uma tela.
- **Elemento de Dados**: O bloco básico para definição de dados em programas ABAP.
- **ABAP**: Programação Avançada de Aplicações Empresariais, uma linguagem de programação de alto nível criada pela SAP.
- **SAP**: Sistemas, Aplicações e Produtos em Processamento de Dados.
- **Programa**: Um conjunto de instruções que realiza uma tarefa específica em ABAP.

### Explicações
- **ABAP**: Abreviação de Programação Avançada de Aplicações Empresariais. É uma linguagem de programação de alto nível criada pela SAP para desenvolvimento de aplicativos empresariais.
- **SAP**: Abreviação de Sistemas, Aplicações e Produtos em Processamento de Dados. É uma corporação multinacional alemã conhecida por desenvolver software empresarial.
- **Elemento de Dados**: Em ABAP, um elemento de dados é o bloco básico para definição de dados. Ele define os atributos semânticos de um campo, como descrição e tipo de dado.
