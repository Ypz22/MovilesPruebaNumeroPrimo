import 'package:ejercicio1/view/number_view.dart';
import 'package:flutter/material.dart';
import 'package:ejercicio1/view/number_result_view.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calcular Numero Primo Relativo',
      //rutas
      initialRoute: '/',
      routes: {
        '/': (context) => NumberView(),
        '/result': (context) => ResultView(),
      },
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.tealAccent)
      ),
    );
  }

}
