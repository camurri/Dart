void main() {
  // Atribuindo uma função anônima a uma variável
  var saudacao = (String nome) {
    print('Olá, $nome!');
  };

  // Chamando a função anônima
  saudacao('Simão');
}

/*
Função Anônima: A função (String nome) { print('Olá, $nome!'); } é uma função 
sem nome, que é atribuída à variável saudacao.
Chamada da Função: Para invocar a função anônima, basta chamar a variável
 saudacao('Simão').
A função anônima pode ser útil quando você não precisa reutilizar a função
 em outros locais e quer mantê-la local para ser executada diretamente.

Entendendo a Sintaxe () {} em Dart
A sintaxe () {} em Dart, geralmente, representa uma função anônima (ou lambda).
Essa estrutura é utilizada para definir funções que não possuem um nome
 explícito e são frequentemente utilizadas em situações onde uma função
  é necessária como argumento para outra função.

Funções Anônimas em Dart
Sintaxe:
Dart

() {
  // Corpo da função
}
Uso:
Passadas como argumentos: Podem ser passadas como argumentos para outras funções
que esperam uma função como parâmetro.
Atribuídas a variáveis: Podem ser atribuídas a variáveis para serem usadas
posteriormente.
Exemplos de Uso
1. Passando como argumento para forEach:

Dart

List<int> numbers = [1, 2, 3, 4, 5];
numbers.forEach((number) {
  print(number * 2);
});
Neste exemplo, a função anônima é passada para o método forEach da lista.
 A cada iteração, o número atual é multiplicado por 2 e impresso.

2. Atribuindo a uma variável:

Dart

var dobro = (int x) => x * 2;
print(dobro(5)); // Imprime 10
Aqui, a função anônima que duplica um número é atribuída à variável dobro.
 Essa variável pode ser usada como uma função normal.

3. Como parâmetro de uma função de alta ordem:

Dart

void aplicarOperacao(List<int> lista, Function(int) operacao) {
  lista.forEach(operacao);
}

aplicarOperacao(numbers, (number) {
  print('O número é: $number');
});



A função aplicarOperacao recebe uma lista e uma função como parâmetros. 
A função passada como argumento é aplicada a cada elemento da lista.
Outros Usos e Conceitos Relacionados
Funções de seta: Uma sintaxe mais concisa para funções anônimas com um único
expressão:
Dart
var dobro = (int x) => x * 2; // Equivalente ao exemplo anterior
Closures: Funções anônimas podem capturar variáveis do escopo externo, criando 
closures.
Higher-order functions: Funções que aceitam outras funções como argumentos ou 
retornam funções são chamadas de higher-order functions.
Em Resumo
As funções anônimas em Dart, representadas pela sintaxe () {}, são uma ferramenta
poderosa para escrever código mais conciso e funcional. Elas são amplamente
utilizadas em operações como mapeamento, filtragem e redução de listas, bem
como em programação funcional.
*/