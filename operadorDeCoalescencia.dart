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

//Resumo: O operador ?? é uma maneira mais compacta e eficiente de lidar com
// valores nulos em Dart. Ele é especialmente útil quando você quer fornecer
// um valor padrão sem precisar escrever um bloco if.*/