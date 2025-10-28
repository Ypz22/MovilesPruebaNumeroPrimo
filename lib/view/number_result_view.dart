import 'package:flutter/material.dart';

class ResultView extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final result = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
        appBar: AppBar(
          title: Text('Resultado'),
        ),
        body: Center(
          child: Text(
            result,
            style: TextStyle(fontSize: 20, color: Colors.teal),
            textAlign: TextAlign.center,
          ),
        )
    );
  }

}