// Programa para demonstrar como criar e lançar exceções personalizadas em Dart.
//
// Este exemplo inclui:
// 1. A criação de uma classe personalizada de exceção chamada 'VoceEStafazendoBesteira'.
// 2. A implementação de um método 'toString' na classe de exceção para fornecer uma mensagem descritiva.
// 3. O lançamento dessa exceção quando uma condição inválida é encontrada dentro da função 'funcao'.
// 4. O uso do bloco 'try-catch' para capturar e tratar a exceção personalizada.
//
// Fluxo do programa:
// - A função 'funcao' recebe um número inteiro.
// - Se o número for menor ou igual a zero, a exceção 'VoceEStafazendoBesteira' é lançada.
// - No bloco 'try', a exceção é capturada e tratada com mensagens personalizadas.
// - Exceções genéricas são tratadas no bloco 'catch'.

void main() {
  try {
    funcao(-10); // Chamada que gera uma exceção personalizada.
  } on VoceEStafazendoBesteira {
    // Tratamento específico para a exceção 'VoceEStafazendoBesteira'.
    print('Besteira!');
  } catch (e) {
    // Tratamento genérico para qualquer outra exceção.
    print(e);
  }
}

// Função que verifica se o valor fornecido é válido.
// Lança a exceção 'VoceEStafazendoBesteira' se o valor for menor ou igual a zero.
void funcao(int x) {
  if (x <= 0) {
    throw VoceEStafazendoBesteira();
  }
  print(x); // Exibe o número se for válido.
}

// Classe personalizada de exceção.
// Implementa a interface 'Exception' para criar uma mensagem específica ao ser lançada.
class VoceEStafazendoBesteira implements Exception {
  @override
  String toString() {
    return 'Você não pode passar um valor menor ou igual a zero';
  }
}

// Saída esperada:
// Besteira!
