import 'dart:convert';

void main() {
  //https://www.google.com/search?q=json+editor+online&rlz=1C1GCEA_enBR1129BR1131&oq=&gs_lcrp=EgZjaHJvbWUqCQgAEEUYOxjCAzIJCAAQRRg7GMIDMgkIARBFGDsYwgMyCQgCEEUYOxjCAzIJCAMQRRg7GMIDMgkIBBBFGDsYwgMyCQgFEEUYOxjCAzIJCAYQRRg7GMIDMgkIBxBFGDsYwgPSAQg2NThqMGoxNagCCLACAQ&sourceid=chrome&ie=UTF-8
  //https://www.udemy.com/course/curso-completo-flutter-app-android-ios/learn/lecture/29252536#questions/4836278

  Map<String, dynamic> dados = json.decode(dadosDoUsuario());

  print(dados['nome']);
  print(dados['endereço']);
  print(dados['casado']);

}

String dadosDoUsuario() {
  return """
{
  "nome": "Paulo",
  "idade": 45,
  "casado": true,
  "endereço": "Rua 10",
  "profissão": "programador",
  "linguagem1": "Python",
  "linguagem2": "Dart",
  "linguagem3": "Java",
  "idioma1":"Português",
  "idioma2":"Ingles"
} """;
}
