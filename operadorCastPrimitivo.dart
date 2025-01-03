//Vamos aprender sobre operador cast

/*Conceito de Casting
Casting é o processo de converter um tipo de dado em outro. Em Dart, isso pode ser feito de forma explícita usando a palavra-chave as. O casting é útil quando você tem uma referência de um tipo mais genérico e deseja tratá-la como um tipo mais específico.

Exemplo de Casting com Tipos Primitivos
No seu código atual, você está fazendo um cast de double para int usando o método toInt():
*/

void main() {
  int num1 = 10;
  int num2 = 3;
  double resultado = num1 / num2;
  print(resultado); // Imprime 3.3333333333333335

  // Aqui estamos fazendo um cast de double para int
  int resultadoInt = resultado.toInt();
  print(resultadoInt); // Imprime 3
}
