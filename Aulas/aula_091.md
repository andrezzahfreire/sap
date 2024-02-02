### Resumo

Neste vídeo, Vinícius demonstra como copiar um programa padrão para um programa personalizado (Z) no SAP ABAP. Ele destaca as desvantagens de copiar programas padrão, como congelar atualizações e o risco de erros devido à falta de conhecimento abrangente. O processo envolve identificar o programa padrão, copiá-lo no SC38 e ajustá-lo conforme necessário. Vinícius usa o exemplo de copiar uma transação (S16N) e modificá-la adicionando um botão. A importância de copiar quando não é possível atender às necessidades do cliente com exits e a precaução ao modificar programas padrão amplamente utilizados são enfatizadas.

### Analogia

Copiar um programa padrão é como clonar um modelo de carro de um fabricante conhecido para fazer modificações. Embora economize tempo inicialmente, pode levar a problemas de compatibilidade, e as modificações podem não acompanhar as futuras atualizações, arriscando a funcionalidade e a segurança.

### Notas

- 🧊 **Congelar Atualizações:** Copiar um programa padrão congela sua versão, exigindo comparação manual e atualizações.
- 🤹 **Duplicação de Esforços:** Os esforços de manutenção se duplicam ao trabalhar em um programa copiado, levando à inconsistência.
- 🧠 **Falta de Conhecimento:** A falta de conhecimento abrangente sobre o programa copiado pode resultar em erros e incompatibilidades.
- 🔄 **Risco de Incompatibilidade:** As alterações feitas em um programa copiado podem não se alinhar com futuras atualizações, causando problemas.
- 🧩 **Impacto na Integração:** Copiar um programa amplamente utilizado afeta sistemas integrados; é necessária consideração cuidadosa.
- 🚗 **Analogia:** Copiar um programa padrão é como clonar um modelo de carro, arriscando compatibilidade e futuras atualizações.
- 🕵️‍♂️ **Processo de Identificação:** O vídeo aborda como identificar, copiar e modificar programas padrão, demonstrado com um exemplo de transação.
- 🔄 **Cautela na Modificação:** A modificação é aconselhada quando os exits padrão são insuficientes ou para programas que não afetam muitos sistemas integrados.
- 🔄 **Visão Geral do Procedimento:** As etapas incluem a cópia no SC38, renomeando objetos, se necessário, e ajustando conforme necessário.
- 🔄 **Exemplo:** O vídeo exemplifica a cópia da transação S16N e a adição de um botão ao programa copiado.

### Palavras-chave

- **ABAP:** Abreviação de Advanced Business Application Programming, uma linguagem de programação de alto nível usada no SAP.
- **SC38:** Código de transação no SAP para copiar programas.
- **S16N:** Uma transação padrão do SAP usada como exemplo.
- **Exit:** Um mecanismo no SAP para aprimorar a funcionalidade padrão sem modificar o programa original.
- **Programa Z:** Programas personalizados no SAP, frequentemente derivados da cópia de programas padrão.

### Explicações

- **ABAP:** Advanced Business Application Programming (ABAP) é uma linguagem de programação de alto nível usada para desenvolver aplicativos no ambiente SAP.
- **SC38:** SC38 é um código de transação no SAP usado para copiar programas.
- **Exit:** No SAP, um exit é um mecanismo para aprimorar a funcionalidade padrão dos programas sem modificar o programa original.
- **Programa Z:** No SAP, programas Z são programas personalizados criados pelos usuários, frequentemente derivados da cópia de programas padrão e prefixados com "Z" ou "Y".
