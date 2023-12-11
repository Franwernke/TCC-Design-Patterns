[< Voltar](/docs/)

## Prototype

### Problema

Ao criarmos instâncias de uma classe, atribuímos a elas valores para cada um dos atributos. Se pensamos em objetos simples de serem criados, é comum instânciarmos várias vezes a classe e atribuirmos manualmente os atributos. COntudo, em alguns casos, a instanciação de um objeto é algo trabalhoso e pode gerar diferentes erros no caminho.

### Exemplo

Você está implementando um sistema e precisa testar uma classe. Para cada caso de teste, você precisará instânciar a classe que quer testar e realizar alguns processos para certificar que ela se comporta da forma desejada. Porém, se a classe que você precisa testar é particularmente complexa, cada caso de teste demorará um pouco para instanciar a classe. Dessa forma, executar esses testes se torna demorado, oque pode dificultar a produção do código.

### Contexto

- Temos uma classe que tem um processo de instanciação complexo
- Precisamos copiar um objeto de forma exata com todos os seus atributos

### Solução

O padrão Prototype é usado para copiarmos objetos de forma idêntica, com todos os atributos iguais. Esse padrão utiliza uma segunda classe que tem um método que conhece todos os atributos da classe a ser copiada e copia os atributos do objeto passado para um novo objeto que é retornado. Dessa forma, podemos resolver o problema do exemplo criando uma classe Prototype que copia todos os atributos da classe sendo testada para um novo objeto. Assim, podemos alterar o objeto clonado para todos os casos de teste sem perda do estado original da instância.

### Diagrama

### Implementação
