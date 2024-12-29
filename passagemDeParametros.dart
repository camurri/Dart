void main() {
  saudacoes('João',
      false); //Saudações João,  Seja bem vindo(a!), Agora: 2021-08-02 15:00:00.000

  saudacoes('Maria',
      true); //Saudações Maria,  Seja bem vindo(a!), Agora: 2021-08-02 15:00:00.000
/// This file contains Dart code related to parameter passing.
/// 
}

//Função que não recebe parâmetros e retorna valor
//Parâmetro opcionais posicionais dentro de colchetes
void saudacoes(String nome, [bool mostrarAgora = true, String sep = '-']) {//Função que recebe parâmetros e não retorna valor
  print(sep * 20); //
  print(
      'Saudações $nome'); //Imprime 'Saudações' e o nome passado como parâmetro
  print('Seja bem vindo(a!)'); //
  if (mostrarAgora) {
    print('Agora: ${agora()}'); //
  }
}

//Função que não recebe parâmetros e retorna uma String
String agora() {
  DateTime agora = DateTime.now();
  return agora.toString();
}
