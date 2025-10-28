import 'package:ejercicio1/widgets/Button.dart';
import 'package:ejercicio1/widgets/Input.dart';
import 'package:flutter/material.dart';
import '../controller/number_controller.dart';

class NumberView extends StatefulWidget {
  @override
  State<NumberView> createState() => _NumberViewPage();
}

class _NumberViewPage extends State<NumberView> {
  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();
  final NumberController numberController = NumberController();

  String result = '';

  void _checkNumbers() {
    numberController.setNumbers(num1Controller.text, num2Controller.text);
    int res = numberController.checkPrime();
    result = res == 1 ? 'Los números son primos relativos (1)' : 'Los números NO son primos relativos (0)';
    Navigator.pushNamed(context, '/result', arguments: result);
    num1Controller.clear();
    num2Controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Primos Relativos')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            InputNumber(controller: num1Controller, label: "Numero 1"),
            SizedBox(height: 20,),
            InputNumber(controller: num2Controller, label: "Numero 2"),
            SizedBox(height: 20),
            ButtonNumber(onPressed: _checkNumbers, text: "Verificar"),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
