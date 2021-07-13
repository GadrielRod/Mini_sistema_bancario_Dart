void main() {
  List<String> ListaDeLivros = [];
  List<String> ListaDeLinguagens = [
    "Java",
    "C#",
    "Python",
    "PhP",
    "Ruby",
  ];

  //2º Constrututor

  List<int> numero = List.empty(growable: true);

  //Adicao de elementos

  ListaDeLinguagens.add("Dart");
  numero.add(1);
  numero.add(2);
  numero.add(14);

  print(numero.length);

  List<int> pares = List.generate(11, (valor) => valor * 2);

  print(pares);
  numero = List.filled(20, 1);
  print(pares.elementAt(2));
  pares.removeAt(2);

  print(pares);

  print(pares[2]);

  //print(numero);

  bool resultado = pares.every((element) => (element is num));

  print(resultado);

  bool resultado1 = pares.every((element) => (element % 2 == 1));

  print(resultado1);

  List<int> par = [0, 2, 4];

  bool result = meuEvery(par);

  print(result);
}

bool meuEvery(List<int> lista) {
  for (int i = 0; i < lista.length; i++) {
    if (lista.elementAt(i) % 2 != 0) {
      return false;
    }
  }
  return true;
}
