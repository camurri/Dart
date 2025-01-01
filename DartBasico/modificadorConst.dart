// O modificador 'const' é utilizado para criar valores constantes que são conhecidos em tempo de compilação.
// Uma variável ou valor declarado como 'const' é imutável, ou seja, seu valor não pode ser alterado após ser definido.
// No caso do Dart, o 'const' também indica que o valor é fixo e a sua alocação é otimizada para ser eficiente em termos de memória.

void main() {
  // Aqui, a variável 'nome' é declarada como uma constante. Ou seja, seu valor não pode ser alterado após a atribuição inicial.
  const String nome = 'Paulo';

  // O código abaixo geraria um erro de compilação porque você está tentando alterar o valor de uma variável 'const', o que não é permitido.
  //nome = 'José'; // Erro! 'nome' é constante, não pode ser reatribuído.

  // A variável 'idade' também é declarada como 'const', mas aqui você está atribuindo a ela uma expressão matemática.
  // Isso é permitido, pois a expressão é avaliada em tempo de compilação, tornando 'idade' uma constante.
  const int idade = 50 + 30;

  // Aqui, estamos imprimindo o valor de 'idade + 10'. Como 'idade' é uma constante, o cálculo é feito em tempo de compilação.
  // Isso é possível porque 'const' garante que as expressões dentro de uma constante sejam avaliadas no momento da compilação.
  print(idade + 10);

  // O 'const' pode ser usado com listas e outras coleções. Nesse caso, uma lista de strings é declarada como constante.
  // O 'const' faz com que a lista seja imutável, ou seja, você não pode adicionar, remover ou alterar os elementos da lista após sua criação.
  const list = ['Paulo', 'Camuri'];

  // Em Dart, quando usamos 'const' para declarar listas ou mapas, o Dart sabe automaticamente o tipo da variável,
  // então não precisamos especificar explicitamente o tipo da lista. A inferência de tipo ocorre automaticamente.
  // Ou seja, 'const lista' é do tipo List<String> sem a necessidade de declarar explicitamente.
  // Importante: A lista em si é constante (não pode ser modificada), mas seus elementos ainda podem ser objetos mutáveis.

  // A seguir, temos a reatribuição incorreta da variável 'idade', que foi declarada como 'const' anteriormente.
  // Isso gera um erro de compilação, pois 'const' define o valor como imutável.
  // idade = 50 + 30; // Erro! 'idade' é constante e não pode ser alterada.

  // Além disso, a variável 'lista' está sendo declarada duas vezes
}
