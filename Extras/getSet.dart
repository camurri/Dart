void main() {
  final usuario = Usuario("Login", "Senha");

  usuario.setLogin = "Dart Login";
  print(usuario.login);

  usuario.setSenha = "Dart Senha";
  print(usuario.senha);

  usuario.login = "Login sem set";
  print(usuario.login);

  usuario.senha = "Senha sem set";
  print(usuario.login);
}

class Usuario {
  String login;
  String senha;

  Usuario(this.login, this.senha);

  set setLogin(String login) {
    this.login = login + " ?";
  }

  set setSenha(String senha) {
    this.senha = senha + " !";
  }
}
