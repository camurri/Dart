void main() {
  int n = 10;
  int n2 = 10;
  int n3 = 10;

  //operador e
  bool r = n == n2 && n == n3;

  //operador ou
  bool r2 = n != n2 || n != n3;

  print(r);
  print(!r); //Operador de negação
  print(r2);
}
