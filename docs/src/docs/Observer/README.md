[< Voltar](/docs/)

## Observer

### Problema

Ao elaborarmos a passagem de informação de um componente ao outro dentro de um sistema, é comum que vários componentes precisem trocar informações dadas mudanças de estado internas. É comum também, que essas trocas de informações comecem a ficar cada vez mais complexas, exigindo um alto acoplamento entre diferentes partes do sistema. O acoplamento pode deixar mudanças no comportamento dos componentes, uma tarefa árdua que envolve analisar todos os componentes que dependem de cada estado.

### Exemplo

Você está implementando um e-commerce em que vários produtos entram e saem de promoção rapidamente, de forma que o usuário poderia entrar em um produto e a promoção não estar mais ativa depois de poucos segundos. Nesse sistema, é imprescindível que atualizações nos preços dos produtos gerem novas renderizações em cada produto exibido na tela. Para isso, a aplicação busca constantemente no serviço de back-end, por atualizações de preço. Contudo, estamos interessados em atualizações em tempo real somente de produtos que estejam sendo exibidos na tela.

Ao implementar um esquema de eventos para alguns produtos, você rapidamente percebe que a lógica do software que busca informações no back-end constantemente ficará bastante complexa. E essa complexidade cresce na mesma proporção que a quantidade de produtos na loja.

### Contexto

- Grande quantidade de dados que precisam ser repassados para componentes
- Informações que precisam ser entregues imediatamente para os componentes, para não atrapalhar a experiência do usuário
- Diversos consumidores de informação para um número baixo de produtores de dados.

### Solução

O padrão Observer, vastamente usado em sistemas Back-end, tem papel importante na atualização de dados em tempo real no front-end também. Esta padrão estabelece uma interface para consumidores se inscreverem a eventos ou tópicos e também para produtores poderem postar novos eventos que serão consumidos por todos os interessados naqueles eventos. A inversão de dependência dos produtores para com os consumidores é a peça principal neste padrão. Como os consumidores agora tem total controle sobre quais eventos eles desejam e o produtor não se importa mais com isso, a complexidade é pulverizada pelos componentes, tornando-os mais simples de serem mantidos.

### Diagrama

### Implementação
