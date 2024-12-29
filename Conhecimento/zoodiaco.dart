/*Projeto simples que sauda usuário, mostra nome e informa se é dia,
tarde ou noite e também informa o clima*/

String? nome = 'Simão';
String? sobrenome = 'Carvalho';
String? saudaDia = 'Bom dia';
String? clima = 'ensolarado';
String? signo = 'Libra';
DateTime hora = DateTime.now();
int numero = 8;

void funcaoNumeroDaSorte() {
  print('Seu numero da sorte é ${numero}\n');
}

void funcaoSorte() {
  print('Sua cor do dia é amarelo\n');
}

void funcaoAzar() {
  print('Você perderá aquela reunião importante.');
  print('Procure sair pelo menos duas horas mais cedo');
}

void funcaoZodiaco() {
  print('Seu signo é ${signo}\n');
}

void saudaCliente(
    {String? saudaDia,
    String? nome,
    String? sobrenome,
    required Function zodiacoDoDia,
    required Function sorteReves,
    required Function numeroSorte}) {
  if (saudaDia != null) {
    print('Hora atual Brasil: ${hora}\n');
    print('Clima atual: ${clima}\n');
    print('${saudaDia}, ${nome} ${sobrenome}!\n');

    zodiacoDoDia();
    numeroSorte();
    sorteReves();
  } else {
    print(
        'Erro ao passar argumentos para saudaCliente. Verifique a documentação');
  }
}

void main() {
  saudaCliente(
      saudaDia: saudaDia,
      nome: nome,
      sobrenome: sobrenome,
      zodiacoDoDia: funcaoZodiaco,
      sorteReves: funcaoSorte,
      numeroSorte: funcaoNumeroDaSorte);
}
