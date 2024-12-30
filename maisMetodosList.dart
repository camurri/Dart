void main() {
  List<int> numeros = [10, 20, 56, 78, 12, 23, 22, 20];


// Verificando se algum item da lista é divisível por 2
// Se pelo menos um elemento atender retorna verdadeiro 
  print(numeros.any((i)=> i%2 == 0));
//Nesse caso todos os números da lista são divisíveis por 2

}

/*
O código cria uma lista de números e verifica se existe algum número par nessa
lista. O método any junto com a função anônima permite fazer essa verificação
de forma concisa.

O que acontece por baixo dos panos:
O método any itera sobre cada elemento da lista numeros.
Para cada elemento, a função anônima verifica se o número é par.
Se encontrar algum número par, o método any imediatamente retorna true e a 
iteração é interrompida.
Se nenhum número par for encontrado, o método any retorna false após percorrer
toda a lista.
Exemplo de saída:
true
*/


