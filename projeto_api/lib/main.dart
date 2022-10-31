import 'package:flutter/material.dart';
import 'package:projeto_api/paginas/cadastro.dart';
import 'package:projeto_api/paginas/consulta.dart';
import 'package:projeto_api/paginas/home.dart';
import 'package:projeto_api/util/tema.dart';

void main() {
  runApp(const API());
}

class API extends StatefulWidget {
  const API({super.key});

  @override
  State<API> createState() => _APIState();
}

class _APIState extends State<API> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Tema().criaTema(),
      initialRoute: "/home",
      routes: {
        "/home": (context) => const Home(),
        "/consulta": (context) => const Consulta(),
        "/cadastro": (context) => const Cadastro(),
      },
    );
  }
}
