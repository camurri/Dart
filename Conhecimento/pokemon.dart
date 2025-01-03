void main() {
  //Criando um Pikachu
  Pokemon pikachu = Pokemon('Pikachu', 'eletrico', 45, 8, 10, 7.3);

  //Imprimindo informações sobre o Pikachu
  print('Nome: ${pikachu.nome}');
  print('Tipo: ${pikachu.tipo}');
  print('Nível: ${pikachu.nivel}');
  print('Saúde: ${pikachu.saude}');
  pikachu.atacar();

  Pokemon raichu = Pokemon('Raichu', 'eletrico', 75, 10, 20, 5.2);
  print('Nome: ${raichu.nome}');
  print('Tipo: ${raichu.tipo}');
  print('Nível: ${raichu.nivel}');
  print('Saúde: ${raichu.saude}');
  raichu.atacar();
}

class Pokemon {
  String nome;
  String tipo;
  int nivel;
  int poder;
  int saude;
  double precisao;

  //Construtor
  Pokemon(
      this.nome, this.tipo, this.nivel, this.poder, this.saude, this.precisao) {
    print('Um novo pokemon foi criado: -  $nome');
  }

  void atacar() {
    print('$nome atacou!');
  }

  void defender() {
    print('nome $nome defendeu!');
  }
}


