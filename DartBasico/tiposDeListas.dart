// ignore_for_file: unnecessary_null_comparison, unused_local_variable

void main() {
  // Lista que aceita elementos nulos.
  // O tipo da lista é `String?`, o que significa que pode conter strings ou nulos.
  List<String?> lista1 = ['Paulo', 'Sergio', null]; // Permite adicionar `null` na lista.
  lista1.add('dados'); // Permite adicionar strings à lista.

  // Lista que aceita elementos nulos.
  // O tipo da lista é `String`, portanto, só pode conter strings e não pode conter `null`.
  List<String> lista2 = ['Paulo', 'Sergio'];
  lista2.add('dados'); // Não permite adicionar nulos à lista.

  // Lista que pode ser inicializada como `null`.
  // O tipo da lista é `List<String>?`, o que significa que a lista pode ser nula ou conter strings.
  List<String>? lista3;
  // lista3.add('dados');  // NÃO PERMITIDO! A lista pode ser `null`, e você não pode chamar métodos nela sem verificações de nulidade.

  // Antes de usar a lista, é necessário verificar se ela é `null`.
  if (lista3 != null) {
    lista3.add('dados'); // Só podemos adicionar elementos se a lista não for `null`.
  }

  // Exibe o conteúdo de `lista3`. Neste caso, como `lista3` é `null`, o valor impresso será `null`.
  print(lista3);

  // Lista que pode ser inicializada como `null` e pode conter elementos nulos.
  // O tipo da lista é `List<String?>?`, o que significa que a lista pode ser `null` e, se não for `null`, pode conter elementos nulos.
  List<String?>? lista4;
  // lista4.add(null);  // É permitido adicionar `null`, mas a lista pode ser `null`, então a mesma verificação de nulidade seria necessária.
}
