//aula: https://www.udemy.com/course/curso-completo-flutter-app-android-ios/learn/lecture/29252574#overview

void main() {
  // Criando uma lista vazia do tipo String. A lista 'nomes' começa vazia.
  List<String> nomes = [];

  // Utilizando o operador de cascade '..' para adicionar itens na lista 'nomes'.
  // O operador '..' é utilizado para aplicar múltiplas operações de forma encadeada
  // em um objeto. Nesse caso, a lista 'nomes' é manipulada diretamente.
  List<String> mod = nomes
    ..add('Paulo') // Adiciona o nome 'Paulo' à lista
    ..add('César') // Adiciona o nome 'César' à lista
    ..add('Laventura'); // Adiciona o nome 'Laventura' à lista

  // Imprimindo o conteúdo da lista 'mod', que contém os mesmos elementos que 'nomes'.
  print(mod); // Saída: [Paulo, César, Laventura]
}

