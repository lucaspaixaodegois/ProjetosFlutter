/*
SUBROTINAS 
Problema:
Crie uma função que receba dois números interios como parâmetros e retorne o maior deles. 
*/
import 'dart:io';

void verificaMaior(int x1, int x2) {
  if (x1 > x2) {
    print("O maior número é: $x1");
  } else {
    print("O maior número é: $x2");
  }
}

main() {
  int num1, num2;

  print("Informe o primerio número: ");
  var input1 = stdin.readLineSync();
  num1 = int.parse(input1.toString());
  print("Informe o primerio número: ");
  var input2 = stdin.readLineSync();
  num2 = int.parse(input2.toString());
  verificaMaior(num1, num2);
}
