void main() {
  saudacoes('Paulo'); //Paulo
}

String? cliente; //? indica que a variável pode ser nula

String c = cliente ?? 'Desconhecido'; //Se cliente for nulo, c recebe 'Desconhecido'

void saudacoes(String cliente) {
  //cliente é uma variável opcional
  print('Saudações, ${c.toUpperCase()}');//Desconhecido
  print('Saudações, ${cliente.toUpperCase()}');//Paulo
}
