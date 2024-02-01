### Resumo

Neste vídeo, Vinícius demonstra como executar um relatório em segundo plano usando o SAP ABAP. Ele apresenta um relatório pré-criado com uma tela de seleção, explicando sua funcionalidade de realizar um loop, aguardar dois segundos em cada iteração e exibir a saída na tela. Ele contrasta a execução em primeiro plano (interativa) com a execução em segundo plano (não interativa), enfatizando a necessidade da execução em segundo plano ao lidar com tarefas demoradas. Vinícius guia os espectadores pelo processo de executar um programa em segundo plano, monitorar o progresso do job e verificar a saída do programa.

### Analogia

Executar um relatório em segundo plano é semelhante a terceirizar uma tarefa. Em vez de supervisionar pessoalmente um processo demorado, você delega a uma equipe eficiente (execução em segundo plano) enquanto se concentra em outras atividades. Isso permite que você verifique periodicamente os resultados sem supervisão constante, semelhante a supervisionar tarefas agendadas no mundo dos negócios.

### Notas

- 🕰️ Executar um programa em segundo plano é crucial para tarefas demoradas, evitando erros de tempo limite e permitindo a execução paralela.
- 🔄 A execução em segundo plano é recomendada quando as tarefas precisam de execuções periódicas e programadas.
- 🖥️ O SAP fornece um processo direto para executar programas em segundo plano por meio do código de transação SM37.
- ⏲️ Ao executar em primeiro plano, o usuário precisa esperar a conclusão do programa, enquanto a execução em segundo plano permite a multitarefa.
- 📅 As telas de seleção, como a demonstrada, podem ser personalizadas para parâmetros de entrada.
- 🔄 A execução em segundo plano periódica é útil para automatizar tarefas repetitivas, como importar pedidos em intervalos regulares.
- 📄 A saída da execução em segundo plano pode ser visualizada por meio do código de transação SM37, fornecendo insights sobre o sucesso ou erros do programa.
- 🕵️‍♂️ Monitorar e gerenciar jobs em segundo plano são habilidades essenciais no desenvolvimento SAP ABAP.
- 🔄 A execução em segundo plano é vantajosa para programas pesados ou cenários em que a supervisão manual contínua é impraticável.
- 🔄 Jobs executados periodicamente podem ser facilmente gerenciados e modificados conforme necessário.

### Palavras-chave

- **SAP ABAP**: Uma linguagem de programação desenvolvida pela SAP para construir aplicativos de negócios.
  - *Explicação*: ABAP significa Advanced Business Application Programming, sendo uma linguagem de programação de alto nível criada pela SAP para desenvolver aplicativos na plataforma SAP.

- **Execução em Primeiro Plano**: Execução interativa de um programa, onde o usuário aguarda sua conclusão.
  - *Explicação*: No primeiro plano, o usuário interage ativamente com o programa, aguardando sua conclusão antes de prosseguir.

- **Execução em Segundo Plano**: Execução não interativa de um programa, permitindo processamento paralelo e multitarefa.
  - *Explicação*: A execução em segundo plano libera o usuário para realizar outras tarefas enquanto o programa é executado separadamente.

- **Código de Transação SM37**: Código de transação SAP para gerenciar e monitorar jobs em segundo plano.
  - *Explicação*: SM37 fornece uma visão centralizada de jobs em segundo plano, permitindo aos usuários monitorar e gerenciar sua execução.

- **Erro de Tempo Limite**: Um erro que ocorre quando uma tarefa leva mais tempo do que o permitido para ser concluída.
  - *Explicação*: Erros de tempo limite impedem que tarefas demoradas consumam recursos excessivos, garantindo a estabilidade do sistema.

- **Tarefas Agendadas**: Tarefas definidas para serem executadas em intervalos predeterminados automaticamente.
  - *Explicação*: Tarefas agendadas, no contexto do SAP, referem-se a jobs que executam periodicamente sem intervenção manual.
