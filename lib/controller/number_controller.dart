import '../model/number.dart';

class NumberController {
  late NumberModel numberModel;

  String setNumbers(String a, String b) {
    if(a.isEmpty || b.isEmpty) return 'Ingrese un numero!';
    final num1 = int.parse(a);
    final num2 = int.parse(b);

    if(num1 <= 0 || num2 <= 0) return 'Ingrese un numero mayor a 0!';

    numberModel = NumberModel(num1: num1, num2: num2);
    return 'Ingresado con exito';
  }

  int checkPrime() {
    return numberModel.prime();
  }
}