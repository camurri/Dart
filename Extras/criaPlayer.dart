void main() {
  var humanoid_001 = Humanoid(
      nome: 'Victor_Bl4k', hp: 100, walkSpeed: 16, jumpHeight: 14, dash: 12);

  print("Player1: ${humanoid_001.nome}");
  print("HP: ${humanoid_001.hp}");
  print("WalkSpeed ${humanoid_001.walkSpeed}");
  print("Jump Height ${humanoid_001.jumpHeight}");
  print("Dash: ${humanoid_001.dash}");

  print('===================');

  var humanoid_002 =
      Humanoid(nome: 'Bozo', hp: 150, walkSpeed: 32, jumpHeight: 24, dash: 8);

  print("Player2: ${humanoid_002.nome}");
  print("HP: ${humanoid_002.hp}");
  print("WalkSpeed ${humanoid_002.walkSpeed}");
  print("Jump Height ${humanoid_002.jumpHeight}");
  print("Dash: ${humanoid_002.dash}");

  print('===================');

  var humanoid_003 =
      Humanoid(nome: 'Tiger', hp: 112, walkSpeed: 32, jumpHeight: 34, dash: 10);

  print("Player3: ${humanoid_003.nome}");
  print("HP: ${humanoid_003.hp}");
  print("WalkSpeed ${humanoid_003.walkSpeed}");
  print("Jump Height ${humanoid_003.jumpHeight}");
  print("Dash: ${humanoid_003.dash}");
}

//Código do modulo
class Humanoid {
  final String nome;
  final int hp;
  final int walkSpeed;
  final int jumpHeight;
  final int dash;

  Humanoid(
      {this.nome = 'Humanoid',
      this.hp = 0,
      this.walkSpeed = 0,
      this.jumpHeight = 0,
      this.dash = 0});
}
