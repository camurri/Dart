/*
No Dart, a função void main() é o ponto de entrada obrigatório para a execução do programa. Sem o main, o Dart não saberá por onde começar a rodar o código. Aqui estão os detalhes sobre o main e alternativas:
Função do void main()
Ponto de entrada do programa:

Todo programa Dart começa sua execução no main.
É onde você organiza e chama outras funções ou inicializa a lógica do aplicativo.
Organização do Código:

A função main serve como o local principal para organizar e estruturar seu programa, 
permitindo que outras funções sejam chamadas conforme necessário.
Posso evitar o uso de main?
Não diretamente.

O Dart exige que o ponto de entrada do programa seja definido. Porém, você pode 
minimizar sua lógica dentro do main chamando outras funções.
O main pode ser reduzido a algo simples como:
dart

Exemplo:

void main() => iniciarAplicativo();

void iniciarAplicativo() {
  print('Bem-vindo ao aplicativo!');
}


Posso chamar outras funções de outras partes do código?
Sim, você pode!
O Dart permite que você defina funções em qualquer lugar dentro do mesmo arquivo 
ou em outros arquivos. Para chamar funções de outro arquivo:

Defina as funções em um arquivo separado (por exemplo, minhas_funcoes.dart):

// main.dart
import 'minhas_funcoes.dart';

void main() {
  saudacao('Paulo');
}

Execute o programa:
O main será o ponto de entrada, mas ele pode chamar funções definidas em outros 
arquivos.

Alternativas ao main para Executar Códigos no Dart
Scripts Dart podem rodar sem o main ao usar o interpretador interativo dart run,
 mas isso é incomum em projetos completos.
Flutter: Quando você usa Flutter, a função main inicializa o aplicativo Flutter
 e chama o runApp().

No Flutter, a função main() é usada como o ponto de entrada do aplicativo.
Dentro dela, a função runApp() é chamada para inicializar a árvore de widgets
e exibir a interface do usuário. Aqui está um exemplo básico:


import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Exemplo Flutter'),
        ),
        body: Center(
          child: Text('Olá, Flutter!'),
        ),
      ),
    );
  }
}


StatelessWidget é um widget que não pode ser alterado após a inicialização.

Explicação do Código
main como ponto de entrada:

A função main() é onde o aplicativo começa sua execução.
runApp(MyApp()) é chamado para inicializar o aplicativo e renderizar
 o widget MyApp.
Função runApp():

Aceita o widget raiz do aplicativo como argumento (neste caso, MyApp).
Esse widget é o ponto de partida para a construção da interface do usuário.
Widget MyApp:

É um widget que estende StatelessWidget, indicando que sua interface não muda
 com o estado.
O método build retorna um widget MaterialApp, que configura o tema, rotas e
 outros aspectos do aplicativo.
Scaffold:

Fornece a estrutura básica da tela, como barra de título, corpo e mais.
Text:

Exibe o texto "Olá, Flutter!" no centro da tela.

Resultado na Tela
Quando você executa este código, o aplicativo exibirá uma tela simples com:

Uma barra de título chamada "Exemplo Flutter".
Um texto "Olá, Flutter!" centralizado.

 */

