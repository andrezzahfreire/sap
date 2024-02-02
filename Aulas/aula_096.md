### Resumo
Neste vídeo, Vinícius fornece uma introdução ao módulo SAP MM (Material Management), explicando seu papel na gestão de materiais, estoques e processos de aquisição. Ele aborda funcionalidades-chave, como a criação de pedidos de compra, tratamento de entradas físicas e fiscais de materiais, e processamento de pagamentos a fornecedores.

### Analogia
Navegar no SAP MM é semelhante a gerenciar o estoque de alimentos de uma casa. Assim como se identifica as necessidades, escolhe um fornecedor, recebe e verifica os mantimentos, e paga as contas, o SAP MM ajuda as empresas a gerenciar seus materiais, desde a identificação até a aquisição e pagamento.

### Notas
- 📚 **Visão Geral do Módulo MM**: MM significa Material Management, sendo responsável pela gestão de materiais, inventário e processos de armazenamento.
- 🔄 **Ciclo de Gerenciamento de Materiais**: Engloba a identificação das necessidades de materiais, criação de pedidos de compra, tratamento de entradas de materiais e processamento de pagamentos a fornecedores.
- 💼 **Funcionalidades**: O SAP MM oferece ferramentas para controle de estoque, gestão de fornecedores, cotações, negociação de preços, processamento de pedidos de compra, recebimento de materiais, inspeção e aspectos financeiros, como faturamento e pagamento.
- 🔄 **Integração com Outros Módulos**: O MM pode ser integrado a outros módulos SAP, compartilhando informações e transações.
- 🗂️ **Principais Transações**: MM01 (Criar Material), MB21 (Criar Pedido de Compra), MIRO (Verificação de Fatura) e mais.
- 🧾 **Tabelas e Dados**: Diversas tabelas (MARA, MARC, etc.) armazenam dados cruciais, como detalhes do mestre de materiais, valoração e documentos de compra.
- 📊 **Processo de Compra**: Envolve requisição, aprovação, determinação de fornecedor, cotação, criação de pedido de compra, monitoramento, recebimento de material, entrada fiscal e processamento de pagamento.
- 📁 **Programas ABAP**: Programas ABAP, como BAPI_MATERIAL_SAVEDATA e BAPI_PO_CHANGE, são usados para gestão de materiais e pedidos de compra.
- 📈 **BAPs e Transações**: BAPI_MATERIAL_SAVE é usado para criar ou atualizar materiais, e BAPI_PO_CREATE cria um pedido de compra.
- 📝 **Exemplo Passo a Passo**: Demonstração da criação de um pedido de compra (MB21), tratamento de entrada de material (MIGO) e entrada fiscal (MIRO) no SAP.

### Palavras-chave

- **SAP MM**: SAP Material Management, responsável pela gestão de materiais e processos de aquisição.
- **Cotações**: Ofertas formais de preços de fornecedores para bens ou serviços.
- **Verificação de Fatura (MIRO)**: Processo no SAP MM para confirmar dados corretos em faturas recebidas e autorizar pagamento.
- **Programas ABAP**: Programação Avançada de Aplicações Empresariais, usada para personalização e extensão de funcionalidades no SAP.
- **BAPs (Interfaces de Programação de Aplicações Empresariais)**: Ferramentas no SAP que permitem a comunicação de aplicativos externos com sistemas SAP.
- **Mestre de Materiais (MARA)**: Repositório central que armazena informações sobre materiais, como descrição, dimensões e detalhes do fornecedor.
- **Valoração (MARC)**: Tabela no SAP MM que armazena dados de valoração de materiais.
- **Pedido de Compra (PO)**: Documento emitido a um fornecedor indicando tipo, quantidade e preço acordado para produtos ou serviços.
