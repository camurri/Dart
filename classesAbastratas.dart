// Aprender sobre classes abstratas

void main() {
  // Instanciando a classe Cachorro
  Cachorro cachorro = Cachorro("Dog", 10.0);
  cachorro.morrer(); //
}

// Classe Cachorro que herda de Animal
// Erro: Missing concrete implementation of 'Animal.morrer'.
/*
Missing concrete implementation of 'Animal.morrer'.
Try implementing the missing method, or make the class
abstract.dartnon_abstract_class_inherits_abstract_member

*/

class Cachorro extends Animal {// Erro: Missing concrete implementation of 'Animal.morrer'.
  Cachorro(String nome, double peso) : super(nome, peso);

  @override
  void fazerSom() {
    print("$nome está latindo!");
  }


//*******comentar para gerar o erro!******

 @override
void morrer() {
print("$nome morreu.");
}


}

// Classe abstrata Animal
abstract class Animal {
  String nome;
  double peso;

  Animal(this.nome, this.peso);
  // Método abstrato
  void fazerSom();

  void morrer();

  // Método concreto
  void comer() {
    print("$nome está comendo.");
  }
}

/*
Explicação sobre Classes Abstratas:

1. **Definição**:
   - Uma classe abstrata é uma classe que não pode ser instanciada diretamente. 
   Ela serve como um modelo para outras classes.
   - Em Dart, uma classe é declarada abstrata usando a palavra-chave `abstract`.

2. **Métodos Abstratos**:
   - Métodos abstratos são métodos que não têm implementação na classe abstrata. 
   Eles devem ser implementados pelas subclasses.
   - Exemplo: `void fazerSom();` na classe `Animal`.

3. **Métodos Concretos**:
   - Métodos concretos são métodos que têm implementação na classe abstrata e 
   podem ser herdados pelas subclasses.
   - Exemplo: `void comer() { print("$nome está comendo."); }` na classe `Animal`.

4. **Uso de Classes Abstratas**:
   - Classes abstratas são usadas para definir uma interface comum para um grupo
    de subclasses.
   - Elas permitem a reutilização de código e a definição de comportamento padrão
    que pode ser compartilhado entre subclasses.

### O que Pode e o que Não Pode Ser Feito com Classes Abstratas

**Pode Ser Feito**:
- **Definir Métodos Abstratos**: Métodos que devem ser implementados pelas 
subclasses.
  ```dart
  abstract class Animal {
    void fazerSom();
  }*/
