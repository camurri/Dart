//aninhamento de if

void main() {
  double nota = 3;
  double exame = 8;

  if (nota >= 5.0) {
    print('Aprovado');
  } else if (nota >= 3.5) {
    print('Exame');

    if (exame >= 7) {
      print('Aprovado no exame');
    } else {
      print('Reprovado');
    }
  } else {
    print('Reprovado');
  }
}
