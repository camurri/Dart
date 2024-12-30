void main() {
  List<String> cesta = ['banana', 'maçã', 'uva', 'limão', 'abacaxi'];

//Iteração 1: Usando o for in
  for (String fruta in cesta) {
    print(fruta.toUpperCase());
  }

//Iniciando por indice específico. De 2 a 4;
  for (String fruta in cesta.sublist(2, 4)) {
    print(fruta.toLowerCase());
  }

/*
Sintaxe concisa e legível: A sintaxe for in é mais intuitiva e facilita a
leitura do código.
Iteração direta sobre os elementos: O loop itera diretamente sobre cada elemento
da lista, atribuindo-o à variável fruta a cada iteração.
Ideal para percorrer listas e coleções: É a forma preferida para iterar sobre
elementos em listas, conjuntos e outros tipos de coleções em Dart.
*/

//Iteração 2: Usando o índice com for
  for (int i = 0; i <= cesta.length - 1; i++) {
    print(cesta[i].toUpperCase());
  }

//Iteração 3: Usando forEach com função anônima
  cesta.forEach((nome_do_elemento) {
    print(nome_do_elemento);
  });

//Iniciando por indice específico. De 2 a 4;
  cesta.sublist(2, 4).forEach((nome_do_elemento) {
    print(nome_do_elemento);
  });


/*A iteração utilizando o método forEach é uma forma elegante e concisa de
 percorrer elementos de uma lista em Dart. Ela oferece uma sintaxe mais limpa
  e funcional em comparação com os loops tradicionais.

Como funciona:

Função anônima: O forEach recebe uma função anônima como argumento. Essa função
 é executada para cada elemento da lista.
Parâmetro implícito: A função anônima recebe um parâmetro implícito que
 representa o elemento atual da lista. No seu exemplo, esse parâmetro é fruta.
Operação: Dentro da função anônima, você pode realizar qualquer operação com
 o elemento atual. No seu caso, você está convertendo a fruta para maiúsculas
  e imprimindo-a.
*/

  for (int i = 2; i <= cesta.length - 1; i++) {
    print(cesta[i].toLowerCase());
  }
/*
Iniciando por indice específico - Iteração antiga
Controle total sobre o índice: Permite acessar cada elemento da lista pelo seu
índice, o que pode ser útil em situações onde você precisa da posição do
elemento. Você pode por exemplo começar a iteração a partir de um indice
específico sem precisar digitar código extra.
Mais verboso: A sintaxe é um pouco mais complexa e requer mais linhas de código.
Pode ser menos eficiente: Acessar elementos por índice pode ser ligeiramente
menos eficiente em algumas implementações.




Qual é a melhor?

Em geral, a iteração 1 usando for in é preferida por sua simplicidade, 
legibilidade e eficiência para a maioria dos casos. Ela permite você se 
concentrar na lógica do seu código sem se preocupar com os índices.

Quando usar a iteração com índice?

Quando você precisa do índice: Se você precisa realizar alguma operação
que depende do índice do elemento, como modificar um elemento específico
ou criar uma nova lista com base nos índices.
Quando você precisa iterar sobre uma parte da lista: Se você precisa
iterar apenas sobre uma subseção da lista, você pode controlar os limites
do loop usando o índice.
Considerações adicionais:

Listas imutáveis: Se a sua lista for imutável (constante), a iteração for in
é a única opção, pois você não pode modificar elementos por índice.
Performance: Em muitos casos, a diferença de performance entre as duas formas
é insignificante. No entanto, para grandes listas e operações complexas dentro
do loop, a iteração for in pode ser ligeiramente mais eficiente.
Conclusão:

A iteração for in é a forma mais recomendada para percorrer listas em 
Dart, pois ela é mais clara e concisa. No entanto, a iteração com índice ainda
pode ser útil em situações específicas. A escolha da melhor abordagem depende
das suas necessidades e do contexto do seu código.

Em resumo:

for in: Ideal para a maioria dos casos, simples e legível.
Iteração com índice: Útil quando você precisa do índice ou precisa controlar a
iteração de forma mais precisa.
 */
}
