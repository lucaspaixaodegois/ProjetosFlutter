import 'dart:io'; //imporanto biblioteca igual no C

/*

Faça um programa que calcule se é possivel realizar um emprestimo ou não, tendo como critério a seguinte situação: 
só é possivel ser aprovado , caso o valor solicitado seja menor ou igual o valor do salario do solicitaente multiplicado por 5.Caso contrario informe que o emprestimo foi negado. 
*/
main() {
  print("Informe um salário: ");
  var input1 = stdin.readLineSync();
  double valor = double.parse(input1.toString());
  print("Informe o valor pretendido: ");
  var input2 = stdin.readLineSync();
  double financ = double.parse(input2.toString());
  if (financ <= 5 * valor) {
    print("Emprestimo APROVADO!");
  } else {
    print("Emprestimo RECUSADO!");
  }
}
