void main() {
  Veiculo carro = Veiculo(marca: 'Cherokee', ano: 2009);
  print('Carro: ${carro.marca}');
  print('Ano: ${carro.ano}');

  Veiculo trator = Veiculo(marca: 'John Deere', ano: 2022);
  print('Trator: ${trator.marca}');
  print('Ano: ${trator.ano}');

  Veiculo moto = Veiculo(marca: 'Honda', ano: 2024);
  print('Moto: ${moto.marca}');
  print('Ano: ${moto.ano}');
}

class Veiculo {
  final String marca;
  final int ano;

  Veiculo({
    this.marca = 'Undeclared',
    this.ano = 0000,
  });
}
