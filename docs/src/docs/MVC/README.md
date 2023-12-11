[< Voltar](/docs/)

## Model-View-Controller

### Problema

Organizar uma aplicação é sempre uma tarefa complicada. Porém, não ter nenhuma direção para a arquitetura de um sistema, é a receita para a desorganização em pouquíssimo tempo. Dessa forma, precisamos de uma guia para entendermos em que parte do software cada parte da lógica fica. Assim, conseguimos ler o código como uma linha de produção, onde cada subsistema tem seu papel bem-definido e regido por regras claras.

Apesar de existirem diversos padrões arquiteturais que possam ser seguidos, é muito importante que saibamos qual a intenção daquele padrão. Diferentemente de escolhas pontuais sobre o projeto que são tomadas de acordo com novas funcionalidades que são adicionadas, o padrão arquitetural tem efeitos duradouros e vai influenciar a construção do projeto do início ao fim.

### Exemplo

Você precisa construir um novo front-end para apresentar dados internos sobre os usuários do seu produto. Esse front-end apresentará diversas telas, uma para cada entidade da empresa, com relações entre algumas delas. Essas telas serão construídas por várias equipes, cada uma terá seu contexto e entidade bem-definidas, de forma que uma equipe tenha que ter o mínimo de interação possível com outra equipe.

No começo, os projetos funcionam bem e as equipes conseguem navegar na complexidade de cada entidade. Porém, devido a um corte de verbas, algumas equipes são desfeitas e agora sua equipe deve dar manutenção a algumas outras entidades além da originalmente planejada para vocês.

Como não foi pensado nenhum padrão para a construção da tela de cada entidade, os softwares contruídos pelas equipes são profundamente diferentes. Agora, navegar pela complexidade de outras telas é uma tarefa complicada e dar manutenção é custoso.

### Contexto

- O software a ser construído deve permitir apresentar e modificat um modelo de dados de uma entidade
- O software deve ser extensível a novas funcionalidades
- A relação entre a tela, os dados que estamos trabalhando e as operações possíveis sobre eles é bem clara

### Solução

O Model-View-Controller é um dos padrões arquiteturais mais antigos de toda a computação. Ele define a aplicação como três componentes básicos: Modelo, Visualização e Controles. Esta separação guia os programas para que saibamos onde encontrarmos cada tipo de lógica. Para front-ends, temos uma definição específica de cada um desses componentes:

Modelo: É uma representação das entidades do negócio geralmente armazenadas nos back-ends. Apesar do front-end não controlar diretamente o modelo, ainda é necessário que exista a sincronização do modelo interno do front-end com o modelo do back-end.

Visualizações: É o componente que estrutura as páginas e produz de fato o HTML e o CSS. Os componentes da aplicação se encontram aqui e eles devem conhecer o modelo para organizá-lo em páginas. A lógica destes elementos deve se limitar a apresentação e a modificação dos dados deve ser bastante restrita. Geralmente deixa-se uma camada intermediária entre os modelos e visualizações que permite a adaptação destes dados (vide padrão Adapter).

Controles: É o componente que estipula as ações possíveis sobre o modelo. Aqui, encontramos funções que executam chamadas para back-ends para alterarmos informações, também invalidando o modelo local e forçando sincronizações. Em aplicações modernas, é comum vermos os Controles muito próximos as visualizações (Se são unidos, podemos chamar de uma arquitetura MVVM).

### Diagrama

### Implementação
