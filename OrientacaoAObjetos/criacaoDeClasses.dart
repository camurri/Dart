void main() {
  // Exemplo de criação de objetos de diferentes classes com seus próprios comportamentos
  Aparelho geladeira = Aparelho();
  print(
      'Geladeira está ligada? ${geladeira.ligado}'); // A classe Aparelho define um estado fixo (ligado)

  Animal animal = Animal();
  print(
      'O animal está vivo? ${animal.vivo}'); // A classe Animal define um estado fixo (vivo)

  Radio radio = Radio(true);
  print(
      'O rádio está ligado? ${radio.ligado} '); // A classe Radio recebe um valor no construtor para definir o estado (ligado ou não)

  Fogao fogao = Fogao(null);
  print(
      'O fogão está aceso? ${fogao.aceso}'); // A classe Fogao permite que o estado seja nulo inicialmente (aceso ou apagado)

  Refrigerante refrigerante = Refrigerante(aberto: false);
  print(
      'O refrigerante está aberto? ${refrigerante.aberto}'); // A classe Refrigerante exige um parâmetro para definir se está aberto ou não

  Cafe cafe = Cafe(quente: true);
  print(
      'O café está quente? ${cafe.quente}'); // A classe Cafe exige um parâmetro para indicar se está quente ou frio
}

// Classe 'Aparelho' (com estado fixo)
class Aparelho {
  // Atributo 'ligado' é do tipo 'bool' e é fixo: o aparelho está sempre ligado ao ser criado.
  bool ligado =
      true; // O estado 'ligado' não muda após a criação, é sempre 'true' para o aparelho
}

// Classe 'Animal' (com estado fixo)
class Animal {
  // Construtor sem parâmetros, o estado de 'vivo' é fixo, ou seja, o animal começa sempre vivo.
  Animal();

  // Atributo 'vivo' indica que o animal está sempre vivo ao ser criado.
  // Não há possibilidade de modificar esse valor após a criação, portanto, é fixo.
  bool vivo = true;
}

// Classe 'Radio' (estado configurável via construtor)
class Radio {
  // O construtor permite passar o valor de 'ligado' diretamente ao criar a instância do objeto.
  // O rádio pode ser criado já ligado (true) ou desligado (false).
  Radio(bool ligado) {
    this.ligado =
        ligado; // O estado do rádio é configurado pelo valor passado no momento da criação.
  }

  // Atributo 'ligado' controla se o rádio está ligado ou desligado.
  // Ele recebe o valor do parâmetro 'ligado' que é passado pelo construtor no momento da criação do objeto.
  bool ligado = true;
}

// Classe 'Fogao' (estado inicial configurável com valor nulo)
class Fogao {
  // Atributo 'aceso' é do tipo 'bool?' (anulável). Ou seja, o fogão pode ter um estado indefinido (null), aceso (true) ou apagado (false).
  bool? aceso =
      false; // O valor de 'aceso' pode ser nulo, o que permite a flexibilidade de não definir um estado inicial.

  // Construtor permite passar o estado inicial do fogão. O valor de 'aceso' pode ser qualquer valor (null, true ou false).
  Fogao(bool? a) {
    aceso =
        a; // O valor passado para 'a' é atribuído a 'aceso', que pode ser 'null', 'true' ou 'false'.
  }
}

// Classe 'Refrigerante' (estado configurável via construtor obrigatório)
class Refrigerante {
  // O construtor exige um parâmetro nomeado 'aberto' que define se o refrigerante está aberto ou fechado.
  Refrigerante({required this.aberto});

  // Atributo 'aberto' é um 'bool', indicando se o refrigerante está aberto ou fechado.
  // O valor de 'aberto' é passado ao criar a instância do refrigerante e não pode ser alterado sem um novo valor.
  bool aberto = false;
}

// Classe 'Cafe' (estado configurável via construtor obrigatório)
class Cafe {
  // O construtor exige um parâmetro nomeado 'quente' que define se o café está quente ou frio.
  Cafe({required this.quente});

  // Atributo 'quente' é do tipo 'bool' e indica se o café está quente ou frio.
  bool quente =
      true; // O valor de 'quente' é configurado no momento da criação do objeto e não muda depois.
}
