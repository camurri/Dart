void main() {
  // Criação de uma instância da classe Pessoa
  Pessoa pessoa1 = Pessoa(nome: 'João', idade: 30);

  // Acessando os atributos da instância pessoa1
  pessoa1.nome;
  pessoa1.idade;

  // Declarando uma variável que pode ser nula
  Pessoa? pessoa2; // O modificador '?' indica que pessoa2 pode ser nulo

  // Tentando acessar um atributo de uma variável nula causará um erro
  // pessoa2.nome; // Descomentar esta linha causará um erro, pois pessoa2 é nulo

  // Usando o operador de navegação segura (?.) para evitar erros
  // pessoa2?.nome; // Se pessoa2 for nulo, esta linha não será executada

  // Atribuindo um valor à variável pessoa2
  pessoa2 = Pessoa(nome: 'Maria', idade: 25);

  // Agora que pessoa2 não é mais nulo, podemos acessar seus atributos
  print(pessoa2.nome);
}

// Definição da classe Pessoa
class Pessoa {
  String nome;
  int idade;

  // Construtor da classe Pessoa
  Pessoa({required this.nome, required this.idade});
}
