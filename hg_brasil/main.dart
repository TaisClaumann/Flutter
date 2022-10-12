import 'package:flutter/material.dart';
import 'package:hg_brasil/paginas/pagina_principal.dart';
import 'package:hg_brasil/util/componentes.dart';
import 'package:hg_brasil/util/tema.dart';

void main() {
  runApp(const HGBrasil());
}

class HGBrasil extends StatefulWidget {
  const HGBrasil({super.key});

  @override
  State<HGBrasil> createState() => _HGBrasilState();
}

class _HGBrasilState extends State<HGBrasil> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Tema().criaTema(),
      home: const PaginaPrincipal(),
    );
  }
}
