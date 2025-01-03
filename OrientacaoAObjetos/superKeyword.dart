void main() {
  // Criação de uma instância da classe Cachorro
  Cachorro cachorro = Cachorro('Dog', 10.0); // Instância da classe Cachorro
  cachorro.comer(); // Chama o método comer da classe Cachorro (sobrescrito)
  cachorro.dormir(); // Chama o método dormir da classe Cachorro (sobrescrito)
}

// Classe base Animal
class Animal {
  String nome;
  double peso;
  int idade;

  // Construtor da classe Animal
  Animal(this.nome, this.peso, this.idade);

  // Método comer
  void comer() {
    print('$nome está comendo.');
  }

  // Método dormir
  void dormir() {
    print('$nome está dormindo.');
  }
}

// Classe Cachorro que herda de Animal
class Cachorro extends Animal {
  // Construtor da classe Cachorro
  // A palavra-chave 'super' é usada para chamar o construtor da classe base (Animal)
  Cachorro(String nome, double peso) : super(nome, peso, 6);

  // Método morder
  void morder() {
    print('$nome está mordendo!');
  }

  // Método latir
  void latir() {
    print('$nome está latindo!');
  }

  @override
  void dormir() {
    // Método dormir sobrescrito
    super.dormir(); // Chamando o método dormir da classe pai (Animal)
    print('roncando muito!'); // Mensagem personalizada
  }

  @override
  void comer() {
    // Método comer sobrescrito
    super.comer(); // Chamando o método comer da classe pai (Animal)
    print('e está satisfeito!'); // Mensagem personalizada
  }
}

/*
Explicação do Uso da Palavra-Chave `super`:

1. **Construtor da Classe `Cachorro`**:
   - `Cachorro(String nome, double peso) : super(nome, peso, 6);`
   - A palavra-chave `super` é usada para chamar o construtor da classe base 
   `Animal` e passar os parâmetros `nome`, `peso` e `idade` (neste caso, `6`).

2. **Método `dormir` Sobrescrito**:
   - `@override void dormir() { super.dormir(); print('roncando muito!'); }`
   - A palavra-chave `super` é usada para chamar o método `dormir` da classe base
    `Animal` antes de adicionar comportamento adicional (imprimir 'roncando muito!').

3. **Método `comer` Sobrescrito**:
   - `@override void comer() { super.comer(); print('e está satisfeito!'); }`
   - A palavra-chave `super` é usada para chamar o método `comer` da classe base 
   `Animal` antes de adicionar comportamento adicional (imprimir 'e está satisfeito!').

### Vantagens do Uso da Palavra-Chave `super`:

- **Reutilização de Código**: Permite reutilizar o código do construtor e métodos 
da classe base, evitando duplicação.
- **Organização**: Facilita a organização do código, mantendo a lógica de
 inicialização e comportamento comum na classe base.
- **Extensibilidade**: Permite que a classe derivada (`Cachorro`) adicione 
ou modifique funcionalidades sem alterar a classe base (`Animal`).

Exemplo:
- A classe `Cachorro` herda métodos e atributos da classe `Animal`.
- O construtor de `Cachorro` usa `super` para inicializar a parte `Animal`
 da instância.
- Os métodos `dormir` e `comer` de `Cachorro` usam `super` para chamar as
 versões da classe base antes de adicionar comportamento específico.
*/
