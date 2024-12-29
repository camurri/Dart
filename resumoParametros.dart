
/*
Aula: https://www.udemy.com/course/curso-completo-flutter-app-android-ios/learn/lecture/29252480#questions
Tipos de Parâmetros em Dart
Parâmetros posicionais obrigatórios:
São declarados sem colchetes e precisam ser fornecidos na chamada da função.
*/
void main() {
  funcao('A', null, /*variavel c foi omitida*/ d:'D', e:'E', /*variavel f foi omitida*/);
}

// Não faz sentido ter valor padrão para parâmetros obrigatórios, pois eles são obrigatórios e  não podem ser nulos
// 
void funcao(String a, String? b,
    {String? c='valor padrão se variavel c omitida - aceita null', required String d, required String? e, String f = 'valor padrão se variavel f for omitida'}) {//required indica parâmetro obrigatório
  print(a); // Sempre imprimirá o valor passado, é obrigatório, não pode ser null - variavel posicional
  print(b); // Pode imprimir null - variavel posicional
  print(c); // Também pode imprimir null - variavel nomeada
  print(d); // Sempre imprimirá o valor passado, é obrigatório, não pode ser null - variavel nomeada
  print(e); // Pode imprimir null - variavel nomeada
  print(f); // Pode imprimir null - variavel nomeada
}

/************************************************************************ */

/*
Parâmetros posicionais opcionais:
São colocados entre colchetes ([]) na definição da função. 
Esses parâmetros podem ser omitidos na chamada, e se não forem 
fornecidos, assumem o valor null, a menos que você defina 
um valor padrão.
*/



/*
variáveis nomeadas:
Em Dart, variáveis nomeadas são uma forma de passar argumentos
para funções de maneira clara, permitindo especificar os valores
usando o nome dos parâmetros na chamada da função. Elas oferecem
maior legibilidade e flexibilidade, especialmente em funções
com muitos parâmetros.
*/

