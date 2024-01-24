### Resumo
Este vídeo do YouTube, intitulado "Curso ABAP 073: Exceções (POO)" por Vinícius, aborda o conceito de exceções na programação ABAP. Explica como exceções representam eventos incomuns ou erros durante a execução do programa e como podem ser tratadas para melhorar a legibilidade e manutenção do código. O vídeo demonstra a criação de exceções personalizadas através da herança de classes predefinidas e discute a importância do tratamento de exceções no design do programa.

### Analogia
Lidar com exceções em ABAP é semelhante a ter uma rede de segurança durante uma performance em corda bamba. A rede de segurança (tratamento de exceções) é crucial para capturar eventos inesperados (erros) e permite que a performance (programa) continue suavemente apesar dos desafios.

### Notas
- 🧩 **Definição de Exceções:** Eventos incomuns ou erros durante a execução do programa.
- 🚧 **Abordagem de Tratamento:** Exceções podem ser capturadas e tratadas em blocos de código específicos usando uma estrutura try-catch, separando o tratamento de erros do restante do código.
- 📚 **Classes de Exceção:** Exceções personalizadas herdam de classes predefinidas, como cx_static_check, cx_dynamic_check e cx_no_check.
- 🤖 **Convenção de Nomenclatura Padrão:** Classes de exceção seguem um padrão de nomenclatura, começando com "cx_" para exceções padrão e variações para exceções personalizadas (por exemplo, "zcx_" ou "ycx_").
- 📘 **Criação de Exceções:** Exceções personalizadas são criadas através da herança de classes predefinidas e podem ser vinculadas a uma classe de mensagens para mensagens de erro amigáveis ao usuário.
- ⚙️ **Tratamento em Métodos:** Métodos que declaram exceções devem especificar os tipos que podem lançar, e exceções não declaradas explicitamente devem ser capturadas durante o tempo de design.
- 📝 **Tratamento de Mensagens de Exceção:** Mensagens associadas a exceções podem ser acessadas no bloco try-catch, fornecendo informações detalhadas sobre o erro.
- 🧠 **Exemplo Prático:** O vídeo demonstra a criação de uma exceção personalizada para lidar com entradas inválidas de materiais e a integra em um programa, mostrando todo o processo de tratamento de exceções.
- 🛡️ **Analogia da Rede de Segurança:** O tratamento de exceções atua como uma rede de segurança, impedindo que o programa falhe quando ocorrem erros inesperados.
- 🎭 **Atuação Equilibrada:** Lidar efetivamente com exceções é comparável a manter o equilíbrio durante uma performance em corda bamba, garantindo que o programa continue sua execução suavemente.

### Palavras-chave
- **ABAP:** Advanced Business Application Programming, uma linguagem de programação de alto nível criada pela SAP.
- **Tratamento de Exceções:** O processo de gerenciamento de eventos inesperados ou erros durante a execução do programa.
- **try-catch:** Uma construção de programação que tenta executar um bloco de código e captura quaisquer exceções que possam ocorrer.
- **Herança:** Um conceito de programação onde uma nova classe (subclasse) pode herdar atributos e comportamentos de uma classe existente (superclasse).
- **cx_static_check, cx_dynamic_check, cx_no_check:** Classes ABAP predefinidas para lidar com diferentes tipos de exceções.
- **Classe de Mensagens:** Uma coleção de mensagens no SAP, vinculada a exceções para fornecer informações detalhadas de erro.
- **Tempo de Design:** A fase do desenvolvimento de software em que o código é planejado e estruturado antes da implementação.
