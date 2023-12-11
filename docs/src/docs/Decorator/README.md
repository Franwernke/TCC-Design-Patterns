[< Voltar](/docs/)

## Decorator

### Problema

Ao implementar um componente, é comum que tenhamos que adicionar diversas regras para a visualização. Contudo, os componentes podem acumular responsabilidades demais e se tornarem complexos. Dessa forma, precisamos arranjar maneiras de separar diferentes lógicas para reaproveitá-las melhor. Apesar de podermos compor componentes com Providers, por vezes é interessante que possamos fazer essas mudanças de forma dinâmica.

### Exemplo

Você precisa construir um componente que apresenta textos em diferentes formatos para um blog. Este componente já contém diversas regras de apresentação que foram implementadas nele. Com o tempo, pedem para que os textos possam ser exibidos em várias línguas, para atender um novo público de clientes que falam outras línguas.

Inserir essa nova regra dentro do componente exigirá a mudança de várias partes dele e ele terá mais responsabilidades que no começo. Isso pode torná-lo difícil de ler e também de manter.

### Contexto

- Precisamos adicionar funcionalidades sem alterar suas regras internas
- A regra de exibição depende de alguns fatores externos como a linguagem do usuário
- Ainda precisamos do componente original em algumas situações

### Solução

O padrão Decorator oferece uma forma simples de adicionar novas funcionalidades a componentes sem alterar a estrutura interna deles e promovendo o reuso do componente. O padrão funciona a partir de funções que criam novos componentes a partir de componentes criados anteriormente.

Podemos compor mais de um Decorator no mesmo componente, desde que as interfaces entre os decorators usados sejam compatíveis. Os componentes que serão ”decorados” tem uma lógica mínima para trabalhar com os Decorators e podem até mesmo não serem modificados, mantendo o princípio de propósito único do componente.

### Diagrama

### Implementação
