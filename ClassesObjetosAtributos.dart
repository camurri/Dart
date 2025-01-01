// Programa para demonstrar a criação e uso de objetos em Dart.
//
// Este exemplo inclui:
// 1. Definição de uma classe simples chamada 'Pessoa'.
// 2. Criação de instâncias (objetos) da classe 'Pessoa'.
// 3. Atribuição de valores às propriedades dos objetos.
// 4. Exibição das propriedades de cada objeto no console.
//
// Fluxo do programa:
// - O objeto 'pessoa1' é criado e suas propriedades são definidas.
// - Os valores das propriedades de 'pessoa1' são exibidos no console.
// - Um segundo objeto, 'pessoa2', é criado com valores diferentes.
// - Os valores de 'pessoa2' são exibidos no console.

class Pessoa {
  // Propriedades da classe Pessoa
  String? nome; // Nome da pessoa
  int? idade; // Idade da pessoa
  bool? casado; // Estado civil da pessoa
}

void main() {
  // Criação e configuração do primeiro objeto
  Pessoa pessoa1 = Pessoa();
  pessoa1.nome = 'Daniel'; // Define o nome
  pessoa1.idade = 40; // Define a idade
  pessoa1.casado = true; // Define o estado civil
  print(pessoa1.nome); // Exibe o nome
  print(pessoa1.idade); // Exibe a idade
  print(pessoa1.casado); // Exibe o estado civil

  // Criação e configuração do segundo objeto
  Pessoa pessoa2 = Pessoa();
  pessoa2.nome = 'Ciofi'; // Define o nome
  pessoa2.idade = 35; // Define a idade
  print(pessoa2.nome); // Exibe o nome
  print(pessoa2.idade); // Exibe a idade
  print(pessoa2.casado); // Exibe o estado civil (não definido, será null)
}

// Saída esperada:
// Daniel
// 40
// true
// Ciofi
// 35
// null
