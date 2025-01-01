// aula: https://www.udemy.com/course/curso-completo-flutter-app-android-ios/learn/lecture/29252570#overview
void main() {
  // Tentativa de usar 'const' com 'DateTime.now()' resulta em erro,
  // pois 'DateTime.now()' é um valor calculado em tempo de execução.
  // O modificador 'const' exige que o valor da variável seja conhecido
  // em tempo de compilação, ou seja, o valor precisa ser "constante" e fixo antes de o programa rodar.
  // 'DateTime.now()' depende do momento em que o código é executado e não pode ser determinado
  // enquanto o código é compilado.
  // O código abaixo resultaria em erro:
  // const DateTime agora1 = DateTime.now(); // Erro!

  // Usando 'final' em vez de 'const'. O modificador 'final' permite que a variável seja atribuída
  // uma vez e que o valor seja imutável após a atribuição. No entanto, o valor pode ser calculado
  // em tempo de execução, o que é permitido em casos como 'DateTime.now()'.
  // Isso significa que a variável agora2 é imutável após ser inicializada, mas o valor é calculado
  // quando o programa é executado.
  final DateTime agora2 =
      DateTime.now(); // Funciona! O valor é calculado em tempo de execução.

  // Exibindo a data e hora atual, que foi armazenada na variável 'agora2'.
  // 'agora2' é um valor imutável, mas foi atribuído em tempo de execução.
  print(agora2); // Exibe a data e hora do momento em que o código é executado.

  // Caso quiséssemos uma constante em tempo de compilação, precisaríamos usar valores fixos,
  // como números literais ou strings, por exemplo:
  // const int numeroFixo = 10; // Correto! 'numeroFixo' é uma constante em tempo de compilação.

//   final String sobrenome;
//   if (nome == 'Daniel') {
//     sobrenome = 'Ciofi';
//   } else {
//     sobrenome = 'Não sei';
//   }
//   sobrenome = 'Teste';
}
