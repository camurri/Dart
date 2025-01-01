//Aula: https://www.udemy.com/course/curso-completo-flutter-app-android-ios/learn/lecture/29252530#questions/4836278
void main() {
  // Criação de um mapa (Map) com chaves do tipo int e valores do tipo String?.
  // O mapa armazena números de DDD´s como chaves e as respectivas cidades como
  // valores.
  Map<int, String?> ddds = {
    19: 'Campinas', // Chave 19 associada ao valor 'Campinas'
    41: 'Curitiba', // Chave 41 associada ao valor 'Curitiba'
    11: 'São Paulo', // Chave 11 associada ao valor 'São Paulo'
  };

  // O operador ! após ddds[11] é o operador de assertiva nula em Dart.
  // Ele indica que você tem certeza de que o valor retornado por ddds[11]
  // não será nulo.
  // Aqui, ddds[11] retorna 'São Paulo', então o operador ! é seguro.
  String cidade = ddds[11]!; // Acessa o valor associado ao DDD 11, 'São Paulo'.
  print(cidade
      .toUpperCase()); // Converte o nome da cidade para maiúsculas e imprime.

  /* 
  O operador de assertiva nula (!) em Dart tem um papel importante quando
  estamos lidando com tipos que podem ser nulos, como no caso de variáveis ou
  valores que são do tipo T? (onde T? indica que o valor pode ser do tipo T ou
  null).

  O que é o operador de assertiva nula (!)?
  O operador ! é usado para informar ao compilador que você tem certeza de que
  uma expressão que pode ser nula não será nula naquele ponto do código.
  Quando aplicado a um valor que pode ser null, o operador ! converte o tipo de
  T? (que pode ser nulo) para T (que não pode ser nulo).

  Caso o valor seja de fato nulo, o Dart lançará um erro de execução
  (NoSuchMethodError), indicando que o valor não pode ser acessado porque é nulo.
  Importância do operador !:
  - Evitar problemas com tipos nulos:
    Em versões anteriores do Dart, os valores nulos eram permitidos sem nenhuma 
    restrição, o que causava muitos erros em tempo de execução, como
     NullPointerException.
  
  - Melhorar a legibilidade do código:
    Usar o operador ! pode tornar o código mais claro, pois sinaliza ao
     compilador
    que você tem confiança no valor não ser nulo naquele ponto específico.

  - Reduzir o código redundante:
    O uso do operador ! pode evitar a necessidade de usar condicionais ou o
     operador ??.
  */

  // Iteração sobre o mapa utilizando o método forEach.
  // Para cada chave (key) e valor (value) do mapa, imprime na tela.
  ddds.forEach((key, value) {
    print('key: $key value: $value'); // Imprime a chave e o valor
  });

  // Adiciona novos pares chave-valor ao mapa utilizando o método addAll.
  // A adição inclui os DDDs 21 (Rio de Janeiro) e 16 (Franca).
  ddds.addAll({21: 'Rio de Janeiro', 16: 'Franca'});

  // Imprime o mapa após a adição das novas entradas.
  print(ddds); // O mapa agora inclui as novas cidades

  // Remove entradas onde a chave é maior que 20 utilizando o método removeWhere.
  // Isso remove todas as cidades com DDDs maiores que 20.
  ddds.removeWhere((key, value) => key > 20);

  // Imprime o mapa após as remoções. Apenas as cidades com DDDs menores ou
  // iguais a 20 permanecem.
  print(ddds); // Mapa sem os DDDs 21 e 16

  // Tentativa de acessar o valor associado ao DDD 13 no mapa.
  // O operador ?? garante que, se o DDD 13 não existir no mapa, o valor
  // 'Não informado' será atribuído à variável 'cidade1'.
  String? cidade1 = ddds[13] ?? 'Não informado';
  // Imprime o nome da cidade em maiúsculas. Se não houver cidade associada
  // ao DDD 13, imprime 'NÃO INFORMADO'.
  print(cidade1
      .toUpperCase()); // Converte e imprime o valor da variável 'cidade1' em
  // letras maiúsculas
}
