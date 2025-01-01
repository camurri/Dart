void main() {
  saudacoes(cliente: 'Gustavo');
}

void saudacoes(
    {bool mostrarAgora =
        true, //bool é um tipo de dado que só aceita true ou false
    bool mostrarCliente =
        true, //bool é um tipo de dado que só aceita true ou false
    String? cliente //? indica que a variável pode ser nula
    }) {
  //cliente é uma variável opcional

  if (cliente != null) {
    //se cliente não for nulo
    print('Seja bem vindo(a), $cliente'); //cliente pode ser nulo
  }
  if (mostrarAgora) {
    print('Agora,: ${agora()}'); //agora() pode ser nulo
  }
}

String agora() {
  DateTime agora = DateTime.now();
  return agora.toString();
}
