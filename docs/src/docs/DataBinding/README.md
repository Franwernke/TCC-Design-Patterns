[< Voltar](/docs/)

## Data Binding

### Problema

Ao criarmos estado em aplicações front-end, é importante que a atualização dos dados seja refletida por toda a aplicação. Em JavaScript puro, essa atualização deve ser declarada a todos os momentos. É comum que usemos eventos para notificar a mudança de dados e cada componente deve consumir esse evento e atualizar-se conforme sua regra própria. Contudo, essa abordagem facilmente se torna complexa e pouco reutilizável entre componentes, sendo necessário implementar o mesmo método de escuta para cada dado modificável.

Além disso, por vezes a modificação do dado pode acontecer em vários locais diferentes. Tanto o modelo de dados quanto os inputs da aplicação podem ter controle sobre o dado, gerando uma via de mão dupla de atualizações.

### Exemplo

Imagine que você esteja implementando um site que monitora dados de bolsas de valores, como valores atuais de ações e outras métricas personalizadas. Em determinado momento, você precisa dar suporte a contrução de gráficos personalizados. Esses gráficos devem mostrar uma pré-visualização de como ficarão em tempo real. Para implementar esta lógica, o gráfico de pré-visualização deve consumir alterações nos dados originais do gráfico em tempo real.

### Contexto

- Temos um dado que deve ser visto da mesma forma por todos os componentes
- Modificações neste dado devem ser notificadas a todos os componentes que o utilizam
- Tanto a origem do dado quanto os seus consumidores devem poder alterar o dado caso seja necessário

### Solução

Data Binding é uma técnica comum em front-ends para sincronizar variáveis diferentes que representam o mesmo dado. É possível estabelecer uma analogia de ponteiros, comumente usados em C ou C++, e o Data Binding. Ambas as técnicas entregam uma variável que pode ser modificada em vários lugares do código. Contudo, o Data Binding entrega, além disso, uma forma de reagirmos a atualizações da mesma forma que o padrão Observer. O Data Binding é implementado pela maioria dos frameworks JavaScript dada a sua recorrente necessidade na construção de UIs.

O Data Binding pode ser implementado de duas formas diferentes: One-way ou Two-way data binding. Na primeira forma, somente a origem do dado pode modificá-lo e podemos ter qualquer quantidade de consumidores, de forma muito similar ao padrão Observer. Já na segunda forma, todos aqueles que utilizam o dado podem modificá-lo, dessa forma, todas as variáveis geradas a partir daquele dado tem o mesmo poder sobre ele.

Diferentemente de frameworks como o Angular em que o data binding deve ser declarado literalmente, o React implementa diversas abstrações para que não tenhamos que lidar diretamente com o data binding. Por esse motivo, o React é geralmente considerado uma framework declarativa.

### Diagrama

### Implementação
