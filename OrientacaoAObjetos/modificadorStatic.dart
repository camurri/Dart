/*
O atributo static em Dart oferece várias vantagens, especialmente quando você
precisa de dados ou comportamentos que são compartilhados entre todas as 
instâncias de uma classe, sem precisar de um objeto específico para acessá-los.
Aqui estão as principais vantagens de usar atributos static em Dart:

Acesso sem instanciar a classe: A principal vantagem do static é que você pode 
acessar um atributo ou método estático sem precisar criar uma instância da
classe. Isso é útil quando a informação ou comportamento não depende do estado
de objetos específicos, mas sim de um valor global ou comportamento
compartilhado.
*/


void main() {
  Pessoa pessoa1 = Pessoa(nome: 'nome', idade: 0);

  pessoa1.idade = 46;
  pessoa1.nome = 'Paulo Henrique';
  pessoa1.comer();

  //pessoa1.atributoEstatico = 'Olá'; -> Não permitido

  //Pessoa.nome;//Não permitido
  //Pessoa.idade;//Não permitido
  //Pessoa.comer();//Não permitido
  //Pessoa.dormir();//Não permitido
  print('O nome da pessoa é ${pessoa1.nome} e ela tem ${pessoa1.idade} anos');

  print(Pessoa.atributoEstatico = 'Atrinuto estático acessado e modificado');
  print(Pessoa.atributoEstatico); //Acessando atributo estático
  Pessoa.dormir(); //Método estático

}

class Pessoa {
  Pessoa({required this.nome, required this.idade}); //Construtor padrão

  String nome; //Não pode ser acessado diretamente pela classe
  int idade; //Não podeser  acessado diretamente pela classe

  static String atributoEstatico =
      'Atributo Estático'; //Precisa ser acessado diretamente pela classe

  void comer() {
    //
    print('$nome está comendo');
  }

  static void dormir() {
    print('Atributo estático foi acessado diretamente pela classe');
  }
}
