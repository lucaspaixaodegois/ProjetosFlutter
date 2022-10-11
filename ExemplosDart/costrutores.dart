//Classe
class Casa {
  //Atributos
  late String cor;

  //Métodos
  //void abrirJanela(int qtdJanelas){
  void abrirJanela() {
    print("Abrir janela da casa $cor ");
    //print("Janelas: $qtdJanelas ");
  }

  void abrirPorta() {
    print("Abrir porta da casa $cor ");
  }

  void abrirCasa() {
    this.abrirJanela();
    this.abrirPorta();
  }
}

class Usuario {
  late String usuario;
  late String senha;
  late String cargo;

  Usuario(String usuario, String senha) {
    this.usuario = usuario;
    this.senha = senha;
    print("Configurações inicias do objeto");
  }

  //Usuario(this.usuario, this.senha); //construtor passando os atributos.obs a ordem deve ser a mesma que na classe.

  //Named constructor , construtor nomeado,neste caso chamado de diretor
  Usuario.diretor(this.usuario, this.senha) {
    this.cargo = "diretor";
    print("Libera privilégios para $cargo");
    print("Libera privilégios para o " + this.cargo); //outra forma de printar
  }

  void autenticar() {
    //Recuperar de um banco de dados
    var usuario = "lucaspaixao@gmail.com";
    var senha = "123456";

    if (this.usuario == usuario && this.senha == senha) {
      print("Usuário autenticado");
    } else {
      print("Usuário não autenticado");
    }
  }
}

void main() {
  //Usuario usuario = Usuario("lucaspaixao@gmail.com", "123456");

  Usuario usuarioDiretor = Usuario.diretor("lucaspaixao@gmail.com", "123456");

  //Digitados pelo usuario do seu App
  //usuario.usuario = "lucaspaixao@gmail.com";
  //usuario.senha = "12345";

  //usuario.autenticar();

  /*
  Casa minhaCasa = Casa();
  minhaCasa.cor = "Amarela";
  //minhaCasa.abrirJanela();
  //minhaCasa.abrirPorta();
  minhaCasa.abrirCasa();
  
  
  
  /*
  Casa minhaCasa2 = Casa();
  minhaCasa2.cor = "Vermelha";
  minhaCasa2.abrirJanela(3);*/
  
  //print( minhaCasa.cor );*/
}
