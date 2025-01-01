void main() {

  saudacoes();//'Saudações' e 'Seja bem vindo(a!)'
  agora();//'Agora é: 2021-08-02 15:00:00.000'
}

void saudacoes() {  //Função que não recebe parâmetros e não retorna valor
  print('Saudações'); //Imprime 'Saudações'
  print('Seja bem vindo(a!)');//Imprime 'Seja bem vindo(a!)'
  print('Agora: ${agora()}'); //Chama a função agora() e imprime o retorno dela
}

//Aprendendo sobre retorno de valores

String agora(){//Função que não recebe parâmetros e retorna uma String
   DateTime agora = DateTime.now(); //Cria uma variável do tipo DateTime e atribui a ela a data e hora atual
   return agora.toString(); //Retorna a data e hora atual
}


