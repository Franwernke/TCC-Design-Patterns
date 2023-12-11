[< Voltar](/docs/)

## Provider

### Problema

A passagem de contexto de um componente para o outro pode ser feita de várias formas. É comum que precisemos criar estruturas para comunicar esse contexto da forma mais simples possível. Uma forma de provermos informações é usar a passagem de propriedades de um componente para o outro, prática bastante comum na maioria dos frameworks de front-end. Contudo, essa prática pode se tornar problemática a partir do momento que passamos a ter diversos níveis de componentes e várias propriedades.

Além disso, é comum termos de disponibilizar funções e funcionalidades para os componentes que precisam manter um determinado estado. É o caso de alertas e notificações que precisam ser disparadas por diversos componentes

### Exemplo

Você está criando um aplicativo de leitura no qual podemos definir diversos aspectos do texto via configurações do usuário. As configurações atuais do aplicativo são definidas em uma tela de configurações que disparava eventos para diversos componentes que se atualizam de acordo com a mudança na configuração. Porém, com o tempo, foram criadas muitas configurações e portanto muitos componentes consomem esses eventos. Além disso, os novos componentes de imagem eram renderizados somente em algumas páginas e precisavam guardar estes eventos para retomarem as suas configurações mesmo quando não estavam aparecendo na tela.

### Contexto

- Diversas informações de estado sendo armazenadas de forma descentralizada.
- Criação de múltiplos eventos para lidar com a troca de informação.
- Perca de informação ao renderizar e desaparecer da tela.

### Solução

O padrão Provider envolve uma parte da árvore de componentes e disponibiliza o seu estado interno como uma série de informações sobre o estado da aplicação. Além disso, podemos controlar a renderização de componentes por meio de funções que modificam o estado interno do Provider.

Os Providers podem ser usados em diversas partes do nosso código e o estado de cada um deles é independente. Dessa forma, o Provider é altamente reutilizável e pode ser usado de forma a dar significado aos dados. Podemos usar o Provider por exemplo para: Configurações do aplicativo, sessão do usuário, contexto do navegador, entre outros.

Providers existem em várias linguagens e frameworks e geralmente usam-se bibliotecas que entregam esta solução pronta. No React, é comum usarmos o useContext. O exemplo a seguir utilizará desta funcionalidade padrão do React.

### Diagrama

### Implementação
