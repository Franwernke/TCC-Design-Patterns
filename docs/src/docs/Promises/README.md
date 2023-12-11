[< Voltar](/docs/)

## Promise based async

### Problema

O JavaScript é uma linguagem de somente uma _thread_. Isso significa que todas as operações são executadas em um único laço, que chamamos de Laço de Eventos (Event Loop). Enquanto isso facilita o entendimento do código, pois cada operação será executada até o fim sem impedimentos, isso também pode gerar alguns problemas quando precisamos executar operações que dependem de respostas de APIs. Por exemplo, quando vamos executar um fetch, o JS chama algumas funções do navegador, que por sua vez devem executar e adicionar uma nova operação ao laço para que o JS colha os dados.

### Exemplo

Você está criando um programa que usará três APIs. Essas APIs retornarão dados necessários para apresentar uma tela para seu usuário. Porém, enquanto o usuário espera essas chamadas serem completas, gostaríamos que ele visse uma animação acontecendo na tela, que é controlada também pelo JavaScript. Além disso, gostaríamos de ter um botão na tela que o usuário pudesse cancelar essas chamadas. Contudo, ao começarmos as chamadas as APIs, a animação trava e o botão se torna irresponsivo.

### Contexto

- Estamos executando processos que demoram um tempo indeterminado
- Os processos que estamos executando dependem de APIs terceiras, não controladas pelo nosso programa
- O laço de eventos do JavaScript não pode parar para esperar esses processos

### Solução

A solução implementada pelo JavaScript é permitir que tarefas sejam agendadas para serem executadas somente quando algum processo terceiro responder. Dessa forma, podemos conferir se uma tarefa esta pronta para ser processada e só executá-la no momento certo, não impedindo outras tarefas no processo. A prioridade do laço de eventos, no Javascript, é sempre manter a tela do usuário atualizada, processando mudanças no HTML e no CSS a todo momento. Só depois de garantir os processos que envolvem a tela que ele processa tarefas secundárias que foram envolvidas em Promises.

A expressão linguística Promise que é implementada pelo JS para permitir a assincronia, disponibiliza uma interface padrão para atrasarmos a execução de tarefas. A partir do ES 2017, podemos simplificar o uso de Promises com as palavras reservadas async e await.

### Diagrama

### Implementação
