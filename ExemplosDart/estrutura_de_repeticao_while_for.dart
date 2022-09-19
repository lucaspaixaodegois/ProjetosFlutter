void main() {
  /*
  print(1);
  print(2);
  print(3);
  print(4);
  */

  /*var numero = 5;//5 4 3 2 1
  while( numero >= 1 ){//enquanto
    print("Executado $numero ");
    
    //1 2 3 4 5
    numero--;
  }
  //1 2 3 4 5 6
  for (int numero = 1; numero <= 5; numero += 2) {
    print("Executado $numero ");
  }
  */

  var postagens = [
    "Viagem entre amigos para a praia",
    "Natal em família!!",
    "Almoço de domingo na casa da mãe!!"
  ];
  /*
  //outra estrutura do for para quando não sabemos o total de itens por exemplo.
  for (var postagem in postagens) {
    print("Titulo: $postagem ");
    print("----");
  }
   */
  //outra forma de fazer while, porém ele executa pelo menos uma vez.
  var numero = 1;
  do {
    //faça
    print("Executado $numero");
    numero++;
  } while (numero <= 5); //enquanto
}
