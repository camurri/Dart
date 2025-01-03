void main() {
  Pessoa pessoa1 = Pessoa();

  // pessoa1.cpf; errado

  pessoa1.cpf = '123.456.789-00'; // correto

  print(pessoa1.cpf);

  print(pessoa1.temperatura);//O método medirTemperatura() será chamado aqui
   print(pessoa1.temperatura);//O método medirTemperatura() não será chamado aqui
    print(pessoa1.temperatura);//O método medirTemperatura() não será chamado aqui
     print(pessoa1.temperatura);//  O método medirTemperatura() não será chamado aqui
     //Isso ocorre porque a variável temperatura já foi inicializada e portanto,
     // o método não será chamado novamente. Isso economiza memória e processamento
}

class Pessoa {
  late String cpf;
  // late é um modificador que permite
  // que a variável seja inicializada depois
  //Vantagens: Não precisa inicializar a variável e
  //também não precisa usar o ? para dizer que a variável pode ser nula
  //além disso, o late é mais seguro que o !.

  late double temperatura = medirTemperatura(); //O método  só será chamado 
  //quando a variável for acessada
  //Isso é útil para inicializar variáveis que dependem de métodos ou funções
  //pois,evita que o método seja chamado antes da variável ser acessada
  //Vantagens: Não precisa inicializar a variável e economiza memória e processamento

  double medirTemperatura() {
    print('Medindo a temperatura...');
    return 37.5;
  }
}
