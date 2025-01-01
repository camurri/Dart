void main() {
  List<int> numeros = [1, 10, 20, 56, 78, 12, 23, 22, 40];

//firtWhere retorna o primeiro elemento que satisfaz a condição e retorna
//o elemento
  print(numeros.firstWhere((i) => i % 4 == 0));

//firtWhere retorna o último elemento que satisfaz a condição e retorna
//o elemento
  print(numeros.lastWhere((i) => i % 4 == 0));

//where filtra e retorna todos os elemento que satisfazem a condição
// em um novo iterable
  print(numeros.where((i) => i % 5 == 0));

// Filtra os números da lista que são divisíveis por 5 e retorna uma nova lista
// contendo esses números.
  List<int> numerosDivisiveisPor5 =
      numeros.where((numero) => numero % 5 == 0).toList();

// Imprime: [10, 20] // (assumindo que 10 e 20
//são divisíveis por 5 na lista)
  print(numerosDivisiveisPor5);

// Cria uma nova lista onde cada elemento é incrementado em 1.
// A função anônima `(i) => i + 1` adiciona 1 a cada elemento da lista original.
  print(numeros.map((i) => i + 1));



// Cria uma nova lista de strings representando cada número como uma string.
  List<String> numerosComoStrings = numeros.map((i) => i.toString()).toList();
  print(numerosComoStrings);
}
