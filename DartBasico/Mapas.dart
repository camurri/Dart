void main() {
  // Definição de um Map com chave do tipo `int` e valor do tipo `String?`.
  // O valor pode ser uma `String` ou `null`, como é indicado pelo `String?`.
  Map<int, String?> ddds = {
    19: 'Campinas', // Chave 19 associada ao valor 'Campinas'
    41: 'Curitiba', // Chave 41 associada ao valor 'Curitiba'
    11: 'São Paulo', // Chave 11 associada ao valor 'São Paulo'
  };

  // Exibe o número de elementos no Map (número de pares chave-valor).
  print(ddds.length); // Quantidade de registros (no caso, 3)

  // Adiciona um novo par chave-valor no Map.
  ddds[61] = 'Brasília'; // Adicionando a chave 61 com o valor 'Brasília'.

  // Substitui o valor associado à chave 61 de 'Brasília' para 'Limeira'.
  ddds[61] = 'Limeira'; // Substituindo o valor da chave 61.

  // Remove o par chave-valor associado à chave 19 do Map.
  ddds.remove(19); // Remove o elemento com chave 19 (no caso, 'Campinas').

  // Exibe o Map atualizado após as operações de adição e remoção.
  print(
      ddds); // Exibe o Map atualizado: {41: 'Curitiba', 11: 'São Paulo', 61: 'Limeira'}

  // Observação: Chaves no Map devem ser únicas, mas os valores podem se repetir.

  // Exibe todos os valores do Map.
  print(ddds.values); // Exibe os valores: (Curitiba, São Paulo, Limeira)

  // Exibe todas as chaves do Map.
  print(ddds.keys); // Exibe as chaves: (41, 11, 61)

  // Verifica se uma chave específica existe no Map.
  print(ddds
      .containsKey(50)); // Retorna `false`, pois a chave 50 não está no Map.

  // Verifica se um valor específico existe no Map.
  print(ddds.containsValue(
      'Campinas')); // Retorna `false`, pois o valor 'Campinas' foi removido.

  // Verifica se o valor 'Curitiba' existe no Map.
  print(ddds.containsValue(
      'Curitiba')); // Retorna `true`, pois o valor 'Curitiba' ainda está presente.



}
