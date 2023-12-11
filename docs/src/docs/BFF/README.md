[< Voltar](/docs/)

## Back-end for Front-end

### Problema

Ao aplicarmos o estilo arquitetural de microsserviços nos nossos sistemas de software, geralmente acabamos com informações espalhadas por vários serviços diferentes. Para que front-ends consigam apresentar essas informações sobre o negócio, é necessário que o front-end conheça grande parte da estrutura dos microsserviços. Isso pode levar a quebra do princípio da responsabilidade única dos componentes.

Além disso, podemos ter front-ends para mobile, para aplicativos de computador e para navegadores. Cada front-end apresenta as informações de forma diferente e portanto também precisa de formatos diferentes do modelo. Isso pode ser resolvido usando diferentes endpoints para cada front-end, porém, aumentamos a complexidade dos back-ends e acoplamento entre os serviços de front e back-end.

### Exemplo

Um grupo de desenvolvedores tem um grande serviço back-end que recebe todas as requisições de um software front-end para navegadores. Depois de um tempo, o back-end fica grande demais e o grupo resolve dividi-lo em vários serviços menores, adotando o estilo arquitetural de Microsserviços. Com o crescimento da empresa, também foi necessário criar um aplicativo para celulares, ou seja, um front-end mobile.

Como as visualizações são diferentes, cada serviço tem de saber se está respondendo requisições do mobile ou do navegador. Assim, criamos endpoints duplicados para cada dado e os front-ends tem de saber quais endpoints acessarem.

### Contexto

- Um sistema de software implementado com microsserviços e um ou mais front-ends que consomem informações desses microsserviços.
- Existência de endpoints duplicados ou consumindo informações sobre a natureza do front-end (se é navegador, mobile, híbrido, aplicativo desktop).
- Lógica complexa dentro dos front-ends para reunir informações dos diversos serviços, por vezes, tendo conhecimento desnecessário da estrutura dos dados no back-end.

### Solução

O Back-end for Front-end (BFF) separa a lógica de requisição dos dados da lógica de exibição e estado do front-end. Para o front-end, teremos apenas um serviço de back-end que fornece todos os dados que ele precisa. Já o BFF, expõe as rotas necessárias para o front-end e contém a lógica de agrupamento dos dados, reunindo informações de diversos back-ends para entregar a visualização que o front-end espera.

Neste padrão, cada front-end tem o seu próprio BFF. Dessa forma, podemos lidar com as diferentes necessidades de cada front-end dentro do BFF, evitando esses detalhes no back-end e evitando mudanças desnecessárias na estrutura dos dados armazenados.

Também dentro dessa estrutura, mudanças nos enpoints dos back-ends só resultam em mudanças no BFF, não sendo necessária a alteração do front-end. Isso facilita a manutenção dos back-ends, apesar de ser um padrão pensado principalmente para o front-end.

### Diagrama

### Implementação
