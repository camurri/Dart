/*Projeto simples que sauda usuário, mostra nome e informa se é dia,
tarde ou noite e também informa o clima*/

String? nome = 'Simão';
String? sobrenome = 'Carvalho';
String? saudaDia = 'Bom dia';
String? clima = 'ensolarado';
DateTime hora = DateTime.now();
int numero = 8;

void funcaoSorte() {
  print('Sua cor do dia é amarelo');
  print('Seu numero da sorte é ${numero}');
}

void saudaCliente({String? saudaDia, String? nome, String? sobrenome}) {
  print('${saudaDia}, ${nome} ${sobrenome}!');
  print('Clima atual: ${clima}');
  print('Hora atual: ${hora}');
  funcaoSorte();
}

void main() {
  saudaCliente(saudaDia: saudaDia, nome: sobrenome, sobrenome: sobrenome);
}
