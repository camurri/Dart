void main() {
  // Atribuindo uma função anônima a uma variável
  var saudacao = (String nome) {
    print('Olá, $nome!');
  };

  // Chamando a função anônima
  saudacao('Simão');
}

/*
Função Anônima: A função (String nome) { print('Olá, $nome!'); } é uma função 
sem nome, que é atribuída à variável saudacao.
Chamada da Função: Para invocar a função anônima, basta chamar a variável
 saudacao('Simão').
A função anônima pode ser útil quando você não precisa reutilizar a função
 em outros locais e quer mantê-la local para ser executada diretamente.*/