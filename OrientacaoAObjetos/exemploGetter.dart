

void main() {
  Pessoa pessoa1 = Pessoa();
  print(pessoa1.nomeSecreto);
}

class Pessoa {

  String? _nomeSecreto = 'Flutter';//Atributo privado

  get nomeSecreto {//Getter do atributo privado
    if (_nomeSecreto != null) {
      return _nomeSecreto;
    } else {
      return 'Nome secreto não definido';//Mensagem padrão
    }
  }
}

/*
Por que não precisei definir um setter e não precisei utilizar um método 
construtor para a classe Pessoa?

Você não precisou definir um setter ou utilizar um método construtor para a 
classe Pessoa por algumas razões específicas:

Atributo Privado com Valor Padrão:

O atributo _nomeSecreto é privado e já foi inicializado com um valor padrão
 'Flutter'. Isso significa que, ao criar uma instância da classe Pessoa,
  _nomeSecreto já terá um valor definido, eliminando a necessidade de um
   construtor para inicializá-lo.
Getter Personalizado:

Você definiu um getter personalizado para _nomeSecreto. Este getter permite
 acessar o valor de _nomeSecreto de forma controlada, verificando se o valor
  é nulo e retornando uma mensagem padrão se for o caso. Isso proporciona uma
   maneira segura de acessar o atributo sem expô-lo diretamente.
Sem Necessidade de Modificação:

Se não há necessidade de modificar o valor de _nomeSecreto após a criação da
 instância, um setter não é necessário. A ausência de um setter também reforça
  o encapsulamento, garantindo que _nomeSecreto não seja alterado
   inadvertidamente.

*/