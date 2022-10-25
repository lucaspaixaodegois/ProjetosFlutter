/*
getter = obter, pegar valor
setter = configura, atribui valor
*/
class Conta {
  double saldo = 0;
  double _saque = 0;

  //Getter -> Obter
  double get saque {
    //Validacoes
    return this._saque;
  }

  //Setter -> Configurar
  set saque(double saque) {
    if (saque > 0 && saque <= 500) {
      this._saque = saque;
      print("Saque no valor de R\$$saque. Foi realizado com SUCESSO!");
    } else {
      print("Saque no valor de R\$$saque. Foi NEGADO!");
    }
  }
}

void main() {
  Conta conta = Conta();
  conta.saque = 499;
}
