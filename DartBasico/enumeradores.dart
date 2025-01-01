// Definindo um enumerador chamado StatusPagamento.
// Um enumerador (enum) é uma estrutura que permite definir um conjunto de valores nomeados.
// Ele é útil para representar um conjunto limitado de opções que são mutuamente exclusivas, como estados ou categorias.
// O uso de enums aumenta a legibilidade do código e reduz o risco de erros ao garantir que apenas valores válidos sejam usados.
enum StatusPagamento { pendente, pago, reembolsado }

void main() {
  // Inicializando uma variável chamada 'status' com o valor 'reembolsado' do enumerador StatusPagamento.
  // O uso do enumerador aqui ajuda a garantir que a variável 'status' só possa ter um dos três valores possíveis:
  // StatusPagamento.pendente, StatusPagamento.pago ou StatusPagamento.reembolsado, aumentando a segurança e clareza do código.
  StatusPagamento status = StatusPagamento.reembolsado;

  // Usando uma estrutura de controle 'switch' para verificar o valor de 'status' e realizar ações baseadas no seu valor.
  // O uso de enums em estruturas de controle como 'switch' torna o código mais legível e menos propenso a erros, já que
  // é mais fácil identificar possíveis valores para a variável de controle (status) e garantir que todos os casos sejam tratados.
  switch (status) {
    case StatusPagamento.pendente:
      // Quando o status for 'pendente', execute o código necessário para esse caso.
      // TODO: Adicionar lógica para lidar com status 'pendente'.
      break;
    case StatusPagamento.pago:
      // Quando o status for 'pago', execute o código necessário para esse caso.
      // TODO: Adicionar lógica para lidar com status 'pago'.
      break;
    case StatusPagamento.reembolsado:
      // Quando o status for 'reembolsado', execute o código necessário para esse caso.
      // TODO: Adicionar lógica para lidar com status 'reembolsado'.
      break;
  }

  // Exibindo o índice do status atual. O índice do enumerador é baseado na ordem em que os itens foram definidos.
  // No caso de 'reembolsado', seu índice é 2 (pois é o terceiro item da enumeração).
  // Isso permite que você acesse o valor numérico associado a um item de forma fácil e sem erros de digitação.
  print(status.index);

  // Exibindo o nome do status atual. O 'name' retorna o nome do valor do enumerador como uma string.
  // No caso de 'reembolsado', o nome será "reembolsado".
  // Isso é útil quando você precisa representar ou exibir o valor de forma legível para o usuário ou para fins de registro/log.
  print(status.name);
}


/*
Explicações adicionais sobre a importância do enumerador:
Legibilidade e clareza: O uso de enums torna o código mais legível, pois
 substitui valores "mágicos" (strings ou números fixos que aparecem diretamente
  no código) por identificadores claros e bem definidos. Por exemplo, ao invés
   de escrever diretamente strings como "pendente", "pago", e "reembolsado", você
    usa valores do tipo StatusPagamento.pendente, que indicam com clareza o que
     cada valor representa.

Segurança e robustez: Com enums, o compilador pode verificar se o valor atribuído
 a uma variável realmente faz parte do conjunto de valores válidos definidos
  pelo enum. Isso previne erros como a atribuição de valores inválidos
   (por exemplo, tentando atribuir uma string qualquer ou um número fora do
    intervalo de valores possíveis). Isso reduz bastante a possibilidade de bugs.

Facilidade de manutenção: Se você precisar adicionar ou alterar os valores do
 enum (por exemplo, adicionar um novo status de pagamento), você faz isso de
  forma centralizada no enum, sem precisar modificar o código em várias partes
   do programa. Isso torna a manutenção do código mais simples e segura.

Integração com estruturas de controle: Como vimos no exemplo com o switch, enums
 funcionam muito bem com estruturas de controle, como switch e if-else,
  permitindo que o código seja estruturado de maneira lógica e sem erros.
   O compilador pode até mesmo alertá-lo caso você tenha esquecido de tratar
    um caso, se um novo valor for adicionado ao enum.

Conclusão:
Usar um enumerador no lugar de valores literais (strings, inteiros, etc.)
 aumenta a organização, legibilidade e segurança do código. Ele também facilita
  a manutenção e a refatoração do código, além de permitir que o compilador
   ajude a garantir que você esteja usando valores válidos.
*/