### Resumo
Este tutorial em vídeo explica como trabalhar com o Solity Check da SAP, um método usado para verificar se os usuários têm autorização para realizar certas ações no sistema, como criar ou modificar clientes. Demonstra a aplicação prática por meio de transações como SU21 para criar classes e objetos de autorização, SU53 para exibir verificações de autorização e PFCG para conceder autorização de usuário para tarefas específicas.

### Analogia
Entender as verificações de autorização na SAP é semelhante a ter um passaporte para entrar em diferentes países. Sem a autorização adequada (passaporte), você pode não ter permissão para realizar determinadas ações (entrar no país) dentro do sistema.

### Notas
- 🔍 Solity Check, ou verificação de autorização, verifica as permissões do usuário dentro do sistema SAP.
- 🔄 Transações como SU21 e SU53 são usadas para criar objetos e exibir verificações de autorização, respectivamente.
- 🛠 PFCG é utilizado para conceder autorização de usuário para tarefas específicas.
- 💡 SU53 é particularmente útil para solucionar problemas de autorização.
- 📝 Objetos de autorização são passados com campos e valores específicos para determinar permissões do usuário.
- ⚙️ Retornos de verificação como 0 (autorização concedida), 4 (sem autorização) ou 12 (nenhuma autorização encontrada) indicam o resultado da verificação de autorização.
- 🚫 Erros na verificação de autorização levam os usuários a procurar aprovação de administradores.
- 🧩 Objetos de autorização são criados e gerenciados em transações como PFCG.
- 🛂 Os usuários recebem autorização com base em papéis ou funções atribuídas a eles.
- 🏷 Atividades dentro de objetos de autorização determinam tarefas específicas que os usuários podem realizar.

### Palavras-chave
- Solity Check: Um método na SAP para verificar a autorização do usuário para ações no sistema.
- Objetos de Autorização: Estruturas na SAP que definem permissões para tarefas específicas.
- Transações: Interfaces na SAP para executar funções específicas.
- PFCG: Código de transação na SAP para gerenciar autorizações de usuário.
- SU21: Código de transação na SAP para criar classes e objetos de autorização.
- SU53: Código de transação na SAP para exibir verificações de autorização.
- Permissões: Direitos concedidos aos usuários para realizar ações dentro do sistema.
- Papéis: Conjuntos de permissões atribuídas aos usuários com base em suas responsabilidades.
- Atividades: Tarefas ou ações específicas dentro de objetos de autorização.
- Solução de Problemas: Processo de identificação e resolução de problemas dentro do sistema.
