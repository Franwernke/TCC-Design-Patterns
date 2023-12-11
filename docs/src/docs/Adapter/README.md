[< Voltar](/docs/)

## Adapter

### Problema

Em front-ends, é comum que tenhamos que utilizar serviços back-end que fornecem uma série de dados de acordo com sua estrutura interna. Contudo, nem sempre a estrutura dos dados representa o melhor formato para ser usado nos componentes. Muitas vezes, precisamos trabalhar nessa estrutura antes dela chegar aos componentes. Isso ajuda na separação entre a lógica de apresentação e tratamento dos dados. Além disso, mudanças na estrutura dos dados que vem dos back-ends nem sempre devem alterar os componentes e, consequentemente, apresentação destes dados.

### Exemplo

Você desenvolve um front-end para um serviço de hotelaria digital. Para que o usuário crie reservas nos hotéis, é importante que você disponibilize o número de telefone desses hotéis. O serviço Back-end enviava os números de telefone em uma lista que associava cada hotel a um número de telefone diferente. Porém, devido a mudanças na organização do back-end, o endpoint passou a enviar um dicionário que continha os nomes dos hotéis como chaves e os números de telefone como valores. Dessa forma, você precisa alterar todos os componentes que usavam números de telefone para se adaptarem ao novo modelo.

### Contexto

- Mudanças no retorno de endpoints causam grandes alterações nos componentes que os consomem
- Acoplamento entre a estrutura de dados enviada pelo back-end e a estrutura de dados interna do front-end
- Lógica de mapeamento de dados espalhada pelos componentes

### Solução

O padrão Adapter utiliza de interfaces e mapeadores para facilitar e centralizar a lógica de mapeamento entre estruturas de dados. Ao criarmos um adapter para cada estrutura de dados que temos dentro do nosso front-end, podemos padronizar a expectativa dos componentes com relação aos dados que serão recebidos por eles. Além disso, ainda diminuímos o acoplamento entre o serviço back-end e o front-end, tornando mais fácil a mudança do retorno dos back-ends sem impactar os front-ends. Esse padrão é muito utilizado em conjunto com os Back-ends for Front-ends, que são uma expansão desse desacoplamento.

### Diagrama

### Implementação
