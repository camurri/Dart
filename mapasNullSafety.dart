https://www.udemy.com/course/curso-completo-flutter-app-android-ios/learn/lecture/29252532#questions/4836278
void main() {
  Map<int, String?>? ddds = {19: 'Jundiaí'};
  ddds; // Declaração de um mapa ddds que pode iniciar nulo (Map<int, String>?).
  print(ddds); // Tenta imprimir o valor de ddds, que pode ser nulo.
  if (ddds != null) {
    // Verifica se o mapa não é nulo antes de tentar modificar.
    ddds.remove(11); // Tenta remover o elemento com a chave 11, mas só se o mapa não for nulo.
  }
}
