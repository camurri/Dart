// Aula sobre construtures em Dart
//https://www.udemy.com/course/curso-completo-flutter-app-android-ios/learn/lecture/29252588#overview//
class Pessoa {
  Pessoa({required this.nome, required this.idade}) {
    print('Criando o $nome com idade $idade');
  }

  Pessoa.casada({required this.nome, required this.idade}) {
    casado = true;
  }

   Pessoa.solteira({required this.nome, required this.idade}) {
    casado = false;
  }

  String nome;
  int idade;
  bool casado = false;
}

void main() {
  Pessoa pessoa1 = Pessoa(nome: 'Paulo', idade: 40);

  print(pessoa1.casado);

}
