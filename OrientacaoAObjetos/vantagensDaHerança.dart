// Aula: https://www.udemy.com/course/curso-completo-flutter-app-android-ios/learn/lecture/29252610#overview

void main() {
  // Criação de uma instância da classe Cachorro
  Cachorro cachorro1 = Cachorro();
  cachorro1.nome = "Dog"; // Definindo o nome do cachorro
  cachorro1.idade = 3; // Definindo a idade do cachorro
  cachorro1.comer(); // Chamando o método comer
  cachorro1.dormir(); // Chamando o método dormir
  cachorro1.latir(); // Chamando o método específico latir

  // Criação de uma instância da classe Gato
  Gato gato1 = Gato();
  gato1.nome = "Fluflu"; // Definindo o nome do gato
  gato1.idade = 5; // Definindo a idade do gato
  gato1.comer(); // Chamando o método comer
  gato1.dormir(); // Chamando o método dormir
  gato1.miar(); // Chamando o método específico miar

//List<Cachorro> cachorros = [];//Lista de cachorros
//List<Gato> gatos = []; //Lista de gatos
//List<dynamic> animais = [];//errado!

  List<Animal> animais = [];
  animais.add(cachorro1);
  animais.add(gato1);




  ///1º Exemplo de polimorfismo
  Animal animal_desconhecido = animais.first;//Primeiro animal da lista
  if (animal_desconhecido is Cachorro) {//Se o animal desconhecido for um cachorro
    animal_desconhecido.latir();//Chama o método latir
    print("É um cachorro");//Imprime que é um cachorro
  } else if (animal_desconhecido is Gato) {//Se o animal desconhecido for um gato
    animal_desconhecido.miar();//Chama o método miar
    print("É um gato");//Imprime que é um gato
  }//Fim do if


} //Fim da função principal

/**************************************************************/

// Classe base Animal
class Animal {
  String? nome; // Atributo nome
  int? idade; // Atributo idade

  // Método comer
  void comer() {
    print("$nome está comendo.");
  }

  // Método dormir
  void dormir() {
    print("$nome está dormindo.");
  }
} //Fim da classe Animal

// Classe Cachorro que herda de Animal
class Cachorro extends Animal {
  // Método específico latir
  void latir() {
    print("$nome está latindo.");
  }
} //Fim da classe Cachorro

// Classe Gato que herda de Animal
class Gato extends Animal {
  // Método específico miar
  void miar() {
    print("$nome está miando.");
  }
} //Fim da classe Gato

/*
Vantagens da Herança:

1. **Reutilização de Código**: A herança permite que classes derivadas reutilizem 
código da classe base, evitando duplicação e promovendo a manutenção mais fácil.

2. **Organização e Estrutura**: A herança ajuda a organizar o código em uma
 hierarquia clara e lógica, facilitando a compreensão e o gerenciamento do código.

3. **Extensibilidade**: Novas funcionalidades podem ser adicionadas facilmente
 às classes derivadas sem modificar a classe base, promovendo a extensibilidade do código.

4. **Polimorfismo**: A herança permite o uso de polimorfismo, onde uma classe
 derivada pode ser tratada como uma instância da classe base, permitindo a 
 criação de código mais flexível e genérico.

5. **Facilidade de Manutenção**: Alterações na classe base são automaticamente
 refletidas nas classes derivadas, facilitando a manutenção e atualização do código.

Exemplo:
- A classe `Animal` define métodos comuns como `comer` e `dormir`.
- As classes `Cachorro` e `Gato` herdam esses métodos e adicionam seus próprios 
métodos específicos (`latir` e `miar`), promovendo a reutilização e organização
 do código.
*/
