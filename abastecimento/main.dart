import 'package:flutter/material.dart';
import 'package:flutter_01/paginas/abastecimentos.dart';
import 'package:flutter_01/paginas/combustivel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/abastecimentos',
      routes: {
        '/abastecimentos': (context) => Abastecimentos(),
        '/combustivel': (context) => Combustivel(),
      },
    );
}

}