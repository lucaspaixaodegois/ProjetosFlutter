//Classe
class Casa {
  //Atributos
  late String cor;

  //Métodos
  //void abrirJanela(int qtdJanelas){
  void abrirJanela() {
    print("Abrir janela da casa $cor ");
    // print("Janelas: $qtdJanelas ");
  }

  void abrirPorta() {
    print("Abrir porta da casa $cor ");
  }

  void abrirCasa() {
    this.abrirJanela(); //referenciando atributo da classe
    this.abrirPorta(); //faz referencia ao métodos e atributos dentro dessa classe
  }
}

/* DESAFIO criar classe usuário com dois atributos usuário e senha*/
class Usuario {
  late String usuario;
  late String senha;

  void autenticar() {
    //Recuperar de um banco de dados
    var usuario = "lucaspaixaodegois@gmail.com";
    var senha = "123456";

    if (this.usuario == usuario && this.senha == senha) {
      print("Usuário autenticado");
    } else {
      print("Usuário não autenticado");
    }
  }
}

void main() {
/*  
  Casa minhaCasa = Casa(); //instanciando um objeto do tipo casa
  minhaCasa.cor ="Azul"; //setando valor azul no atributo cor do objeto minhaCasa
  minhaCasa.abrirJanela();
  minhaCasa.abrirPorta();//mostra valor da propriedade do objeto no caso cor da minha casa

 print("-----------------");
  Casa minhaCasa2 = Casa();
  minhaCasa2.cor = "verde";
  minhaCasa2.abrirCasa();
-*/
  Usuario usuario = Usuario();
  usuario.usuario = "lucaspaixaodegois@gmail.com";
  usuario.senha = "123456";
  usuario.autenticar();
}
