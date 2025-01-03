void main() {
  // Função principal

  // Criando o objeto da classe Pessoa com o valor de saldo
  Pessoa objeto = Pessoa(saldo: 99999999);

  // Usando o setter `valor` para atribuir 1000
  objeto.valor = 1000; // Chamando o setter para atribuir valor ao _saldo

  // Acessando o saldo diretamente
  print(objeto.saldo); // Acessando o saldo após atribuição do setter
}

class Pessoa {
  double? _saldo; // Variável privada

  // Construtor com o saldo sendo atribuído diretamente
  Pessoa({required double saldo}) {
    _saldo = saldo;
  }

  // Getter para acessar o saldo
  double? get saldo => _saldo;

  // Setter para atribuir valor ao saldo
  set valor(double grana) {
    _saldo = grana; // Atribuindo o valor ao campo _saldo
  }
}
