void main() {
//Criando uma lista e imprimendo 100 vezes o número 8
//Especifica sempre o mesmo valor
  List<int> maluca = List.filled(100, 8);
  print(maluca);

//Gerando 100 vezes o numero 10
//Especifica qualquer valor dentro da função
  List<int> doida = List.generate(100, funcao_externa);
  print(doida);

  print(i);
}

int funcao_externa(int posicao) {
  return posicao * 10;
}

//Simplificando: Vamos inserir uma função anônima
List<int> i = List.generate(10, (i)=> i*5);
