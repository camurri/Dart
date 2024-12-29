/*Projeto simples que sauda usuário, mostra nome e informa se é dia,
tarde ou noite e também informa o clima*/

String? nome = 'Simão';
String? sobrenome = 'Carvalho';
String? saudaDia = 'Bom dia';
String? clima = 'ensolarado';
DateTime hora = DateTime.now();

void saudaCliente(String? saudaDia, String? nome, String? sobrenome) {
  print('${saudaDia}, ${nome} ${sobrenome}!');
  print('Clima atual: ${clima}');
  print('Hora atual: ${hora}');
}

void main() {
  saudaCliente(saudaDia, nome, sobrenome);
}
