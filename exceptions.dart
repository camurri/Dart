// Programa para demonstrar o tratamento de exceções em Dart.
// A primeira versão do código apresentava um problema devido à duplicidade da função 'main',
// o que causava um erro de compilação.
// Exemplo do erro:
// exceptions.dart:8:6: Error: 'main' is already declared in this scope.
// void main() {
//    ^^^^
// exceptions.dart:1:6: Context: Previous declaration of 'main'.
// void main() {
//  ^^^^
//
// O código atualizado utiliza o bloco 'try-catch' para capturar diferentes tipos de exceções:
// 1. 'UnsupportedError' – Exemplo de exceção personalizada (não será levantada neste código).
// 2. 'FormatException' – Tratada ao tentar converter uma string inválida para número.
// 3. Um bloco genérico para capturar qualquer outra exceção não prevista.
//
// Além disso, o bloco 'finally' garante a execução de um trecho de código final,
// independentemente de exceções serem levantadas ou não.
void main() {
  try {
    // Tentativa de realizar uma operação que pode lançar exceções.
    int resultado = 100 ~/ 2; // Divisão válida (sem exceção aqui).
    print(resultado);

    // Tentativa de parsear uma string inválida para double.
    double? valor = double.tryParse('50.2a');
    print(valor); // Retornará null devido à entrada inválida.
  } on UnsupportedError {
    // Tratamento para exceções do tipo 'UnsupportedError'.
    print('Caiu aqui!');
  } on FormatException catch (e) {
    // Tratamento para exceções do tipo 'FormatException'.
    print('Caiu no format exception: ${e.message}');
  } catch (e) {
    // Bloco genérico para capturar outras exceções.
    print(e);
  } finally {
    // Bloco 'finally' que será executado sempre.
    print('Final');
  }
}

// Saída esperada:
// 50
// null
// Final
