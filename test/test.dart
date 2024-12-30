void main() {
  List<String> nomesDePets = ['Barata', 'Morgana', 'HellBoy', 'Pandora'];

  nomesDePets.add('Fufa');
  nomesDePets.add('Tretoneudo');
  nomesDePets.add('Gato de meias');
  nomesDePets.remove('Barata');
  nomesDePets.remove('Tretoneudo');

  for (String pet in nomesDePets) {
    print(pet);
  }
}
