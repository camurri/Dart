void main() {
  // Criação de uma instância da classe Cachorro
  Animal animal = Cachorro();
  animal.nome = "Dog"; // Definindo o nome do animal

  // Casting de Animal para Cachorro
  // A palavra-chave 'as' é usada para fazer o cast de 'animal' (tipo Animal) para 'Cachorro'
  // Isso é seguro porque 'animal' realmente é uma instância de 'Cachorro'
  Cachorro cachorro = animal as Cachorro;
  cachorro.latir(); // Chamando o método específico latir

  // Tentativa de casting inválido
  // Aqui estamos tentando fazer o cast de 'animal' (que é um Cachorro) para 'Gato'
  // Isso causará um erro em tempo de execução porque 'animal' não é uma instância de 'Gato'
  try {
    Gato gato = animal as Gato; // Isso causará um erro em tempo de execução
  } catch (e) {
    print('Erro ao fazer cast: $e');
  }
}

// Classe base Animal
class Animal {
  String? nome;
  void comer() {
    print('$nome está comendo.');
  }
}

// Classe Cachorro que herda de Animal
class Cachorro extends Animal {
  void latir() {
    print('$nome está latindo!');
  }
}

// Classe Gato que herda de Animal
class Gato extends Animal {
  void miar() {
    print('$nome está miando!');
  }
}

/*
Explicação do Uso do Operador de Cast `as`:

1. **Casting de Animal para Cachorro**:
   - `Cachorro cachorro = animal as Cachorro;`
   - A palavra-chave `as` é usada para fazer o cast de `animal` (tipo `Animal`) para `Cachorro`.
   - Isso é seguro porque `animal` realmente é uma instância de `Cachorro`.
   - Após o cast, podemos acessar métodos específicos da classe `Cachorro`, como `latir()`.

2. **Tentativa de Casting Inválido**:
   - `Gato gato = animal as Gato;`
   - Isso causará um erro em tempo de execução porque `animal` é uma instância de `Cachorro`, não de `Gato`.
   - O erro é capturado e tratado no bloco `try-catch`.

### O que Pode e o que Não Deve Ser Feito com Casting

**Pode Ser Feito**:
- **Casting para um Tipo Mais Específico**: Quando você tem certeza de que a instância é do tipo mais específico.
  ```dart
  Animal animal = Cachorro();
  Cachorro cachorro = animal as Cachorro;*/