/*
Exemplo de Ambiguidade:
Imagine que você tem uma classe Pessoa, e dentro do construtor da classe, você
tem um parâmetro e uma variável com o mesmo nome. Nesse caso, você precisaria
usar this para indicar explicitamente que você está se referindo à variável
de instância da classe, não ao parâmetro local.
*/

class Pessoa {
  double? saldo; // Variável de instância (pertence à classe)

  // Construtor com ambiguidade
  Pessoa(double? saldo) {
    saldo = saldo; // Aqui há ambiguidade
  }
}

void main() {
  Pessoa pessoa = Pessoa(1000);
  print(pessoa.saldo); // Vai imprimir null, pois a atribuição no construtor não
  // funcionou corretamente


  Pessoa2 pessoa2 = Pessoa2(1000);
  print(pessoa2.saldo); // Agora vai imprimir 1000
}

/*
O que está acontecendo aqui:
Dentro do construtor da classe Pessoa, você tem um parâmetro chamado saldo, que
está recebendo o valor passado ao criar o objeto.
A variável de instância saldo também existe (na classe Pessoa), mas sem o this,
o Dart não sabe a diferença entre o parâmetro saldo e a variável de instância
saldo.
Então, o que acontece na linha saldo = saldo; é que o valor do parâmetro está 
sendo atribuído ao parâmetro mesmo e não à variável de instância.
Isso acontece porque, sem this, o Dart assume que você está falando sobre o
parâmetro saldo, e não a variável de instância. O que é feito é uma
auto-atribuição (o valor do parâmetro é atribuído a ele mesmo).

Como resolver isso?
Para esclarecer a ambiguidade, você usa this para indicar explicitamente que você
quer atribuir o valor do parâmetro à variável de instância da classe:
*/

class Pessoa2 {
  double saldo; // Variável de instância

  // Construtor com ambiguidade resolvida usando 'this'
  Pessoa2(
      this.saldo); // Aqui usamos 'this.saldo' para referir-se à variável de instância
}

/*
O que mudou:
Agora, o Dart sabe que, quando você usa this.saldo, está se referindo à variável
 de instância da classe.
O parâmetro saldo é automaticamente atribuído à variável de instância saldo por 
meio do uso do this.
Resumo:
Ambiguidade ocorre quando você tem um parâmetro ou uma variável local com o mesmo
 nome de uma variável de instância. Nesse caso, o Dart não sabe qual delas você
  está querendo acessar.
Usar this resolve a ambiguidade, tornando claro que você quer acessar a variável
 de instância da classe, e não o parâmetro local.
*/