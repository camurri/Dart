import 'dart:io';

void main() {
  // Solicita ao usuário que digite algo
  stdout.write('Digite alguma coisa: ');

  // Lê a entrada do usuário
  String? input = stdin.readLineSync();

  // Exibe o que foi digitado
  print('Você digitou: $input');
}
