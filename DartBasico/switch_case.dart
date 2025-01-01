void main() {
  String linguagem = 'Dart';

/*
 if(linguagem=='Dart'){
   print('Linguagem muito legal!!!');
 }else if(linguagem=='C'){
    print('Linguagem complicada');
  }else if(linguagem=='Swift'){
   print('Complicada também');
 }else{
   print('Desconhecida');
 }
 
*/

  switch (linguagem) {
    case 'Dart':
      print('Linguagem muito legal!!!');
      break;
    case 'C':
      print('Linguagem complicada');
      break;
    case 'Swift':
      print('Complicada também');
      break;
    default:
      print('Desconhecida');
      break;
  }
}
