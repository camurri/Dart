/*
Descrição do Fluxo do Código
Declaração da Classe Pessoa

Atributos Públicos:
String nome
int idade
bool casado
Atributo Privado:
double? _dinheiro
Construtor da Classe Pessoa

Parâmetros: nome, idade, casado (opcional, padrão é false)
Ação: Imprime uma mensagem indicando a criação de uma nova instância de Pessoa com o nome e idade fornecidos.
Setter para _dinheiro

Define o valor de _dinheiro usando uma função lambda.
Getter para _dinheiro

Retorna o valor de _dinheiro.
Método aniversario

Ação: Imprime uma mensagem de parabéns usando o nome da pessoa.
Retorna: Incrementa e retorna a idade da pessoa.
Exemplo de Fluxograma
Início
Classe Pessoa
Atributos
nome
idade
casado
_dinheiro
Construtor Pessoa
Entrada: nome, idade, casado
Ação: Imprime mensagem de criação
Setter dinheiro
Entrada: valor
Ação: Define _dinheiro
Getter dinheiro
Saída: _dinheiro
Método aniversario
Ação: Imprime mensagem de parabéns
Saída: Incrementa e retorna idade
Fim
*/
void main() {
  //Função principal
 
  Pessoa pessoa1 = Pessoa(nome: 'Paulo', idade: 45, casado: true);
  //Criando uma nova instância de Pessoa

  pessoa1.dinheiro = 27575.98; //Atribuindo um valor ao atributo privado

  print('O ${pessoa1.nome} tem R\$ ${pessoa1.dinheiro}');//Imprimindo o valor do atributo privado

}

class Pessoa {
  // classe Pessoa

  String nome;    //Atributo público
  int idade; //Atributo público
  bool casado;      //Atributo público
  double? _dinheiro;  //Atributo privado


  //Contrutor da classe Pessoa
  Pessoa({required this.nome, required this.idade, this.casado = false}) {

    print('Criando o nome $nome com idade $idade');
  }


  set dinheiro(double valor) => _dinheiro = valor; //Setter do atributo privado 
  
  double get dinheiro => _dinheiro!; //Getter do atributo privado


  int? aniversario() {
    print('Parabéns ${nome}');
    return idade++;
  }

  void casar() {
    casado = true;
  }
}


