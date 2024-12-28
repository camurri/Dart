void main() {
  int i = 0;

  while (i > 10) {
    //Verifica a condição antes de executar o bloco
    print('Olá');
  }

  do {
    print('Olá 2'); //Verifica a condição depois de executar o bloco
    i++;
  } while (i > 10);
}
