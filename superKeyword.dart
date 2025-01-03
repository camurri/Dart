void main() {
  Cachorro cachorro = Cachorro('Dog', 10.0); //Instância da classe Cachorro
  cachorro.comer(); //Método comer da classe Animal

  cachorro.dormir(); //Método dormir da classe Animal
}

class Cachorro extends Animal {
  //Classe Cachorro que herda de Animal
  Cachorro(String nome, double peso) : super(nome, peso, 6);

  void morder() {
    //Método morder
    print('$nome está mordendo!');
  }

  void latir() {
    //Método latir
    print('$nome está latindo!');
  }

  @override
  void dormir() {
    //Método dormir
    super.dormir(); //Chamando o método dormir da classe pai
    print('roncando muito!'); //Mensagem personalizada
  }

  @override //Sobrescrevendo o método comer
  void comer() {
    print('$nome está comendo no prato!'); //Mensagem personalizada
  }

  @override //
  String toString() {
    return 'Cachorro | Nome: $nome, Peso: $peso, Idade: $idade';
  }
} //Fim da classe Cachorro

class Animal {
  //Classe Animal
  String nome; //Atributo nome
  double peso; //Atributo peso
  int idade; //Atributo idade

  Animal(this.nome, this.peso, this.idade); //Construtor da classe Animal

  void comer() {
    //Método comer
    print('$nome está comendo!');
  }

  void dormir() {
    //Método dormir
    print('$nome dormiu!');
  }

  @override
  String toString() {
    return 'Animal | Nome: $nome, Peso: $peso, Idade: $idade';
  }
} //Fim da classe Animal
