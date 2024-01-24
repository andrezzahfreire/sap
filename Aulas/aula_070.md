### Resumo

Este tutorial em vídeo explica o conceito de herança em ABAP (Programação Avançada de Aplicações Empresariais), que é uma característica na programação orientada a objetos (POO). A herança permite que atributos e métodos de uma classe sejam herdados por outra classe, promovendo a reutilização de código e a especialização. O instrutor demonstra exemplos práticos com três classes: Veículo, Bicicleta e Carro. O tutorial explora como a herança funciona em termos de atributos, métodos e encapsulamento.

### Analogia

A herança em ABAP é como passar características familiares. Imagine uma família genérica (classe Veículo) com atributos comuns. Agora, um ramo específico da família (classe Bicicleta) herda essas características, mas adiciona suas características exclusivas. Outro ramo (classe Carro) herda da família genérica e do ramo Bicicleta, especializando-se ainda mais. É semelhante a herdar características gerais de ancestrais, mas ter características distintas dentro de cada família.

### Notas

- 🚗 A herança em ABAP permite a transferência de atributos e métodos de uma classe base para classes derivadas.
- 🚴‍♂️ Uma classe Bicicleta é mostrada como um exemplo de especialização, herdando atributos da classe Veículo e adicionando únicos como "pedaleira".
- 🏎️ A classe Carro demonstra uma especialização adicional com atributos adicionais, como o número de rodas e métodos como "acelerar".
- 🔒 O encapsulamento controla o acesso; atributos privados são acessíveis apenas dentro da classe, protegidos dentro da hierarquia de classes e públicos em qualquer lugar.
- 🔄 Métodos podem ser substituídos em classes derivadas, aprimorando ou modificando sua funcionalidade.
- 🔄 A herança é em cascata; uma classe derivada herda de seu pai direto e de todos os ancestrais.
- ⚙️ O ambiente de desenvolvimento do ABAP, como o SE24, facilita a visualização e a criação de classes com herança.
- 🌐 Uma analogia complexa compara a herança a traços familiares, com cada ramo familiar herdando e especializando com base em suas necessidades exclusivas.
- 🤖 O ABAP suporta herança ilimitada, permitindo que os desenvolvedores criem classes cada vez mais especializadas.

### Palavras-chave

- **ABAP**: Sigla para Programação Avançada de Aplicações Empresariais, uma linguagem de programação desenvolvida pela SAP.
- **Encapsulamento**: Princípio da POO que restringe o acesso a certos componentes, como atributos e métodos privados, protegidos e públicos.
- **Herança**: Conceito da POO em que uma classe (subclasse) herda atributos e métodos de outra classe (superclasse).
- **SE24**: Ambiente de desenvolvimento do ABAP usado para criar e gerenciar classes.
- **Substituir**: Modificar ou aprimorar um método herdado de uma superclasse em uma subclasse.
- **Cascata**: Cadeia de herança em que as classes derivadas herdam de sua classe pai imediata e de todos os ancestrais.
- **Especialização**: Processo de criação de uma classe mais especializada, herdando de uma classe mais geral e adicionando características exclusivas.
