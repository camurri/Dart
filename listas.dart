// criar lista

void main() {
  List<String> lista1 = ['banana', 'maçã', 'laranja'];
  print(lista1);

  List<String> lista2 = [];
  lista2.addAll(lista1); //copia rasa de lista1 para lista2;
  print(lista2);

  lista2.insert(2, 'abacate'); //inserindo item em posição específica;
  print(lista2);

  bool busca = lista1.contains('maçã'); //verificando se a lista contem o item;
  print(busca); //validação

  int index = lista1.indexOf('maçã'); //buscando índice de elemento;
  print(index);

  lista1.remove('maçã'); //remoção por nome de elemento;
  print(lista1);

  lista1.removeAt(0); //remoção por index;
  print(lista1);

  lista2.shuffle(); //embaralha itens da lista;
  print(lista2);

  lista2.clear(); //limpando a lista
  print(lista2);
}

/*
Em Dart, a operação de cópia de listas, como no seu exemplo, geralmente
resulta em uma cópia rasa. Isso significa que, ao copiar uma lista para
outra, você está copiando as referências aos elementos da lista
original, e não os próprios elementos.
*/
