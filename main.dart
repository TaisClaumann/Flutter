import 'package:flutter/material.dart';
import 'package:flutter_01/componentes/util.dart';
import 'package:flutter_01/paginas/pagina_principal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PaginaPrincipal(),
    );
  }
}



