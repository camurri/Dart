//vamos apredner a passar referencias de objetos para funções

void main() {
  Pessoa pessoa1 = Pessoa('Maria'); //criando um objeto pessoa1
  Pessoa pessoa2 = pessoa1; //errado, pois está passando a referência de pessoa1
  // para pessoa2, ou seja, se mudar o nome de pessoa2, mudará o nome de pessoa1

  pessoa2.nome = 'João'; //mudando o nome de pessoa2

  print(pessoa1.nome); //imprimindo o nome de pessoa1
  print(pessoa2.nome); //imprimindo o nome de pessoa2

  //pessoa2 aponta para o mesmo endereço de memória que pessoa1 causando conflito

  void funcao(Pessoa pessoa) {
    //função que recebe um objeto pessoa
    pessoa.nome = 'Pedro'; //mudando o nome do objeto pessoa
    pessoa.nome; //imprimindo o nome do objeto pessoa
  }

  funcao(pessoa1);
  print(pessoa1.nome);
  print(pessoa2.nome);
  //aqui a função funcao() recebeu a referência de pessoa1, então mudou o nome de pessoa1
  //e como pessoa2 aponta para o mesmo endereço de memória que pessoa1, o nome de pessoa2 também mudou
}

class Pessoa {
  String nome;

  Pessoa(this.nome);
}
