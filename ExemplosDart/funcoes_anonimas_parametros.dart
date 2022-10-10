/*
Parâmetros opcionais: 
Para identificar qual parâmetro não é obrigatório basta passar entre chaves {} ao declara a função. EXEMPLO:
void exibirDados(String nome, {int idade, double altura}) {
  print ("Nome: $nome");
  print ("Idade: $idade");
  print ("Altura: $altura");
}
Obs.: Os paramentos que serão opcionais devem ficar no final. Vale lembrar que após os paramentos opcionais não é possível adicionar novos paramentos.
Obs.: quando for chamar a função que recebe parâmetros opcionais deve ser passado com nome e dois pontos seguido do valor. EXEMPLO:
void main() {
  exibirDados("lucas", idade: 29, altura: 1.75);
}


*/

void exibirDados(String nome, int idade, {altura}) {
  var novaAltura =
      altura ?? 0; //testar se altura é null, se sim seta o valor 0 para altura.
  print("Nome: $nome");
  print("Idade: $idade");
  print("Altura: $novaAltura");
}

void calcularBonus() {
  print("seu bônus é de: 20");
}
//passano outra funcao como parametro
void calcularSalario(double salario, Function funcaoParametro) {
  print("Seu salário é: $salario ");
  funcaoParametro();
}

void main() {
  // exibirDados("lucas", 29,altura: 1.75); //passando paramento opcional com dois pontos
  calcularSalario(100, () {
    print("Calculo customizado");//função anonima,logo nao tem nome,geralmente declarada e executada na mesma linha
  });
}
