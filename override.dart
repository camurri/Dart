void main() {
  Cachorro cachorro = Cachorro('Hell Boy', 6.0); //
  print(cachorro); //Imprime o objeto cachorro
  cachorro.comer(); //Método comer da classe Animal
  cachorro.dormir(); //Método dormir da classe Animal
  cachorro.latir(); //Método latir da classe Cachorro
  cachorro.brincar(); //Método brincar da classe Animal
  cachorro.defecando(); //Método defecando da classe Animal
  cachorro.urinando(); //Método urinando da classe Animal
  cachorro.correr(); //Método correr
  cachorro.morder(); //Método morder da classe Cachorro
  print(''); //Pular linha

  Gato gato = Gato('Pandora', 1.0);
  print(gato); //Imprime o objeto gato
  gato.comer(); //Método comer da classe Animal
  gato.dormir(); //Método dormir da classe Animal
  gato.miar(); //Método miar da classe Gato
  gato.brincar(); //Método brincar da classe Gato
  gato.ignorar(); //Método ignorar da classe Gato
  gato.escalar(); //Método escalar da classe Gato
  gato.roubandoComida(); //Método roubandoComida da classe Gato
  print(''); //Pular linha

  Passaro passaro = Passaro('Piu Piu', 0.5);
  print(passaro); //Imprime o objeto passaro
  passaro.comer(); //Método comer da classe Animal;
  passaro.dormir(); //Método dormir da classe Animal;
  passaro.voar(); //Método voar da classe Passaro;
  passaro.pousar(); //Método pousar da classe Passaro;
  passaro.cantar(); //Método cantar da classe Passaro;
  passaro.bicar(); //Método bicar da classe Passaro;
  print(''); //Pular linha

  FilhotedeCachorro filhotedeCachorro = FilhotedeCachorro('Fufinha', 2.0);
  print(filhotedeCachorro); //Imprime o objeto filhotedeCachorro
  filhotedeCachorro.comer(); //Método comer da classe FilhotedeCachorro
  filhotedeCachorro.dormir(); //Método dormir da classe Animal
  filhotedeCachorro.chorar(); //Método chorar da classe FilhotedeCachorro
  filhotedeCachorro.brincar(); //Método brincar da classe Animal
  filhotedeCachorro.defecando(); //Método defecando da classe Animal
  filhotedeCachorro.urinando(); //Método urinando da classe Animal
  filhotedeCachorro.correr(); //Método correr
  print(''); //Pular linha


//Métodos da classe Object
  Object object = Object();//Instância da classe Object
  object.toString(); //Método toString da classe Object
  object.hashCode; //Método hashCode da classe Object
  object.runtimeType; //Método runtimeType da classe Object
  //object.noSuchMethod(Invocation invocation); //Método noSuchMethod da classe Object

  print(object.hashCode); //Imprime o hashCode do objeto object
  print(object.runtimeType); //Imprime o runtimeType do objeto object
  print(object.toString()); //Imprime o toString do objeto object
  print(''); //Pular linha

} //Fim do método main


class Cachorro extends Animal {
  //Classe Cachorro que herda de Animal
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

  @override //Sobrescrevendo o método comer
  void comer() {
    print('$nome está comendo no prato!'); //Mensagem personalizada
  }

  @override //
  String toString() {
    return 'Cachorro | Nome: $nome, Peso: $peso, Idade: $idade';
  }
} //Fim da classe Cachorro

class FilhotedeCachorro extends Cachorro {
  //Classe FilhotedeCachorro que herda de Cachorro
  FilhotedeCachorro(String nome, double peso) : super(nome, peso);

  @override //Sobrescrevendo o método comer
  void comer() {
    print('$nome está comendo na tigela!'); //Mensagem personalizada
  }

  void chorar() {
    print('$nome está dando chorinhos!'); //Mensagem personalizada
  }

  @override
  String toString() {
    return 'Filhote de Cachorro | Nome: $nome, Peso: $peso, Idade: $idade';
  }
} //Fim da classe FilhotedeCachorro

class Gato extends Animal {
  //Classe Gato que herda de Animal
  Gato(String nome, double peso) : super(nome, peso, 2);

  void miar() {
    //
    print('$nome está miando!');
  }

  void ignorar() {
    //
    print('$nome está te ignorando!');
  }

  void roubandoComida() {
    //
    print('$nome está roubando a comida!');
  }

  void escalar() {
    //
    print('$nome está escalando o muro!');
  }

  @override //Sobrescrevendo o método comer
  void comer() {
    //Método comer da classe Animal
    print('$nome está comendo no (seu) prato'); //Mensagem personalizada
  }

  @override //Sobrescrevendo o método dormir
  void dormir() {
    //Método dormir da classe Animal
    print('$nome está dormindo na (sua) cama!'); //Mensagem personalizada
  }

  @override
  String toString() {
    return 'Gato | Nome: $nome, Peso: $peso, Idade: $idade';
  }
} //Fim da classe Gato

class Passaro extends Animal {
  //Classe Passaro que herda de Animal
  Passaro(String nome, double peso) : super(nome, peso, 3);

  void voar() {
    //Método voar
    //
    print('$nome está voando!'); //Mensagem personalizada
  }

  void pousar() {
    //
    print('$nome está pousando!'); //Mensagem personalizada
  } //Fim do método pousar

  void cantar() {
    //
    print('$nome está cantando!');
  }

  void bicar() {
    //
    print('$nome está bicando!');
  }

  @override //Sobrescrevendo o método comer
  void comer() {
    //Método comer da classe Animal
    print('$nome está comendo na gaiola!'); //Mensagem personalizada
  }

  String toString() {
    return 'Passaro | Nome: $nome, Peso: $peso, Idade: $idade';
  }
} //Fim da classe Passaro

class Animal extends Object {
  //Classe Animal
  String? nome;
  double? peso;
  int? idade;

  Animal(this.nome, this.peso, this.idade);
  void comer() {
    print('$nome está comendo!');
  }

  void dormir() {
    print('$nome está dormindo!');
  }

  void brincar() {
    print('$nome está brincando!');
  }

  void defecando() {
    print('$nome está defecando!');
  }

  void urinando() {
    print('$nome está urinando!');
  }

  void correr() {
    print('$nome está correndo!');
  }

  @override
  String toString() {
    return 'Animal | Nome: $nome, Peso: $peso, Idade: $idade';
  }
} //Fim da classe Animal
