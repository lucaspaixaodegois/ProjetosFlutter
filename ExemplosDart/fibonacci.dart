/*Na série de Fibonacci, o próximo número é a soma dos dois números anteriores.
F(n)=F(n-1)+F(n-2).
Os dois números iniciais são 0,1.
Exemplo de série de fibonacci 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55 etc.

Abaixo está o programa de exemplo da série de fibonacci sem usar recursão no dart
*/

printFibonacciSeries(int total, int previousNumber1, int previousNumber2) {
  if (total > 0) {
    int nextNumber = previousNumber1 + previousNumber2;
    print(nextNumber);
    previousNumber1 = previousNumber2;
    previousNumber2 = nextNumber;
    printFibonacciSeries(total - 1, previousNumber1, previousNumber2);
  }
}

void main() {
  int previousNumber1 = 0, previousNumber2 = 1, total = 15;
  print(previousNumber1);
  print(previousNumber2);

  printFibonacciSeries(total - 2, previousNumber1, previousNumber2);
}
