void main() {
  String? nome = null;
  String nomePadrao = "Anônimo";
  String nomeFinal = nome ?? nomePadrao;

  print(nomeFinal); // Saída: Anônimo

// É o mesmo que
  if (nome == null) {
    print('Anônimo');
  } else {
    print(nome);
  }
}
