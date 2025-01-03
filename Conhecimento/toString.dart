class Contato {
  String nome;
  String telefone;

  Contato(this.nome, this.telefone);

  @override
  String toString() {
    return 'Contato: $nome, Telefone: $telefone';
  }
}

void main() {
  Contato contato = Contato("João Silva", "1234-5678");
  print(contato); // Exibe: Contato: João Silva, Telefone: 1234-5678
}
