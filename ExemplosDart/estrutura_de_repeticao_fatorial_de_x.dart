/*
Estruturas de repetição:

Problema:

Crie um programa em Dart que receba um número inteiro informado pelo usuário e apresente o fatorial desse número: Exemplo:5! = 5*4*3*2*1==120;

*/

import 'dart:io'; //importe da lib io entrada e saida igual no C

main() {
  //funcao principal
  int num,
      res = 1,
      i = 1; //declaracao das variaveis , obs o tipo é opcional, pois o dart reconhece sozinho
  print("Informe um número: ");
  var input = stdin.readLineSync();
  num = int.parse(input.toString()); // fazendo cast
  while (i <= num) {
    //loop
    res *= i;
    i++;
  }
  print(
      "O fatorial de $num é $res"); //print o resultado, o $ viabiliza concatenar texto e variavel
}
