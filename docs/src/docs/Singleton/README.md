[< Voltar](/docs/)

## Singleton

### Problema

É comum que, ao implementar front-ends, algumas funcionalidades precisem ser acessadas de diversos lugares. Temos diversas maneiras de compartilhar lógica entre componentes mas algumas vezes é necessário que estabeleçamos um controle especial sobre como cada componente vai acessar aquela funcionalidade. Além disso, alguns recursos só podem ser acessados uma vez, como arquivos e conexões perenes com APIs.

### Exemplo

Imaginemos que você possui um front-end complexo que é utilizado por vários usuários. Porém, a equipe de produto da sua empresa quer que você produza dados sobre a utilização de algumas funcionalidades, para controlar quais funcionalidades devem ser evoluídas ou descartadas. Para gerar e armazenar essas métricas, você usa um provedor externo que distribui uma biblioteca cliente que precisa conectar com o servidor de métricas. Esta conexão precisa continuar ativa durante todo o funcionamento da aplicação pois criá-la é demorado e custoso para a aplicação.

### Contexto

- Temos um recurso único dentro da aplicação, como uma conexão com banco de dados ou uma conexão perene com uma API
- A funcionalidade precisa ser acessível a várias partes do sistema
- A inicialização do objeto que gerencia o recurso é custosa

### Solução

O padrão Singleton possibilita limitar a quantidade de instâncias de uma classe, para uma ou mais instâncias, dependendo da necessidade. Esse controle permite um contrato especializado para lidarmos com um recurso ou simplesmente para disponibilizar a funcionalidade com estado para todo o sistema. Para criarmos esta instância, podemos colocar essa inicialização no começo do ciclo de vida do front-end ou inicializarmos somente quando for necessário o uso da funcionalidade.

O Singleton pode ser considerado um padrão controverso. Se utilizado com muita frequência, ele pode dificultar a manutenção do sistema, pois cada Singleton é uma variável global com estado exposto a todos os componentes.

### Diagrama

### Implementação
