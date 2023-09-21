/**
 * Herança é um princípio de orientação a objetos, que permite que classes compartilhem atributos e métodos, através de "heranças". Ela é usada na intenção de reaproveitar código ou comportamento generalizado ou especializar operações ou atributos. Wikipédia
 obs: Existe um novo modificador chamado late , que permite que o valor inicialmente seja nulo, mas, quando for utilizado em alguma função ou classe, ele vai ser considerado não nulo.
 */

class Animal {
  late String cor;
  void dormir(){
    print("Dormir");
  } 
}

class Cao extends Animal { 
  late String corOrelha;
  void latir(){
    print("Latir");
  }
}

class Passaro extends Animal {
  late String corBico;
  void voar(){
    print("Voar");
  }
}

void main() {
  
  Cao cao = Cao();
  Passaro passaro = Passaro();
  
  cao.cor = "Branco";
  cao.corOrelha = "Preto";
  print( "Cor do cão: " + cao.cor );
  print( "Cor da orelha: " + cao.corOrelha );
  cao.latir();
  
  passaro.cor = "Marrom";
  print( passaro.cor );
  passaro.voar();
  
  
}