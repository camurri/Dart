// Programa para demonstrar a criação de uma classe com métodos que manipulam suas propriedades.
//
// Este exemplo inclui:
// 1. Definição da classe 'Pessoa' com propriedades e métodos.
// 2. Métodos para alterar o nome, atualizar o estado civil e incrementar a idade.
// 3. Criação de dois objetos da classe 'Pessoa' e uso de seus métodos.
// 4. Exibição dos valores das propriedades antes e depois de usar os métodos.
//
// Fluxo do programa:
// - O objeto 'pessoa1' é criado, suas propriedades são definidas e métodos são usados para alterar valores.
// - As alterações em 'pessoa1' são exibidas no console.
// - O objeto 'pessoa2' é criado e configurado de forma semelhante, com foco no uso do método 'aniversario'.

void main() {
  // Criação e configuração do primeiro objeto
  Pessoa pessoa1 = Pessoa();
  pessoa1.nome = 'Daniel'; // Define o nome inicial
  pessoa1.trocarNome('Célio'); // Altera o nome para 'Célio'
  pessoa1.idade = 40; // Define a idade inicial
  pessoa1.casado = true; // Define o estado civil inicial como casado
  print(pessoa1.nome); // Exibe o nome atualizado
  print(pessoa1.idade); // Exibe a idade
  print(pessoa1.casado); // Exibe o estado civil

  pessoa1.aniversario(); // Incrementa a idade em 1
  print(pessoa1.idade); // Exibe a idade atualizada
  pessoa1.casar(); // Marca a pessoa como casada
  print(pessoa1.casado); // Confirma o estado civil

  print('\n'); // Quebra de linha para separar a saída dos dois objetos

  // Criação e configuração do segundo objeto
  Pessoa pessoa2 = Pessoa();
  pessoa2.nome = 'Paulo'; // Define o nome
  pessoa2.idade = 30; // Define a idade inicial
  pessoa2.aniversario(); // Incrementa a idade em 1
  print(pessoa2.nome); // Exibe o nome
  print(pessoa2.idade); // Exibe a idade atualizada
  print(pessoa2.casado); // Exibe o estado civil (não definido, será null)
}

// Definição da classe 'Pessoa'
class Pessoa {
  // Propriedades da classe
  String? nome; // Nome da pessoa
  int? idade; // Idade da pessoa
  bool? casado; // Estado civil da pessoa

  // Método para incrementar a idade em 1
  int? aniversario() {
    print('Parabéns! $nome'); // Mensagem de aniversário
    if (idade != null) {
      idade = idade! + 1; // Incrementa a idade, garantindo que não seja null
    }
    return idade;
  }

  // Método para alterar o estado civil para casado
  void casar() {
    casado = true;
  }

  // Método para trocar o nome
  void trocarNome(String n) {
    nome = n;
  }
}

// Saída esperada:
// Célio
// 40
// true
// Parabéns! Célio
// 41
// true

// Paulo
// Parabéns! Paulo
// 31
// null
