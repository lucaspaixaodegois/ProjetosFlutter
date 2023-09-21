class Animal {
  
  String cor;
  
  Animal(this.cor);//costrutor
  
  void dormir(){
    print("Dormir");
  } 
  //comportamento comum em varios animais0
  void correr(){
    print("Correr ");
    print("como");
    print("um");
  }
  
}

class Cao extends Animal { 
  String corOrelha;
  
  Cao(String cor, this.corOrelha) : super(cor);
  //comportamento exclusivo do cao
  void latir(){
    print("Latir");
  }
  
  @override //sobrepor
  void correr(){
    super.correr();
    print(" cão!");
  }
  
}

class Passaro extends Animal {
  String corBico;
  
  Passaro(String cor, this.corBico) : super(cor);
  
  void voar(){
    print("Voar");
  }
  
  @override //sobrepor
  void correr(){
    super.correr();
    print(" passaro!");
  }
  
}

void main() {
  
  Cao cao = Cao("Marrom", "Branco");
  Passaro passaro = Passaro("Vermelho", "Amarelo");
  
  print( "Passaro cor: ${passaro.cor} corBico: ${passaro.corBico} " );
  
  /*
  cao.correr();
 	passaro.correr(); */
 
  
  /*
  cao.cor = "Branco";
  cao.corOrelha = "Preto";
  print( "Cor do cão: " + cao.cor );
  print( "Cor da orelha: " + cao.corOrelha );
  cao.latir();
  
  passaro.cor = "Marrom";
  print( passaro.cor );
  passaro.voar();
  */
  
}