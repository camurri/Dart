// Aula completa no link: https://www.udemy.com/course/curso-completo-flutter-app-android-ios/learn/lecture/29252468#questions
void main() {
  saudacoes('João',sep:'+', mostrarAgora: false);//Saudações João,  Seja bem vindo(a!)
  saudacoes('Maria', sep:'K'); //Saudações Maria,  Seja bem vindo(a!), Agora: 2021-08-02 15:00:00.000
}

//Função que recebe um parâmetro obrigatório e dois parâmetros nomeados
void saudacoes(String nome, {String sep = '-',bool mostrarAgora = true, }) {//Parâmetros nomeados denrtro de chaves
  
  print(sep * 20); //
  print(
      'Saudações  $nome'); //Imprime 'Saudações' e o nome passado como parâmetro
  print('Seja bem vindo(a)!'); //
  if (mostrarAgora) {
    print('Agora: ${agora()}'); //
  }
}

//Função que não recebe parâmetros e retorna uma String
String agora() {
  DateTime agora = DateTime.now();
  return agora.toString();
}
