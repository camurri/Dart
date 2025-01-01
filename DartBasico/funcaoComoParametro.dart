// Código que demonstra como passar uma função como parâmetro para outra função em Dart
void main() {
  saudacoes('Paulo', corpo: funcao);
}

//função que será passada como parâmetro
void funcao() {
  print('Hoje o dia está chuvoso');
}

//Função que recebe uma função como parâmetro
void saudacoes(String? cliente, {required Function corpo}) {
  print('Saudações, ${cliente}!');
  funcao();//Hoje o dia está chuvoso
}


