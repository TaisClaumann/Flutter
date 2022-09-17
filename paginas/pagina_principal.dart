import 'package:flutter/material.dart';
import 'package:flutter_01/componentes/util.dart';

class PaginaPrincipal extends StatefulWidget {
  const PaginaPrincipal({super.key});

  @override
  State<PaginaPrincipal> createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
        appBar: Util().criarAppBar("App", 20, true, Colors.white, true),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Util().criarTexto("Texto 1", 20, true, Colors.blue),
            Util().criarTexto("Texto 2", 25, true, Colors.red),
            Util().criarTexto("Texto 3", 30, true, Colors.black),
            
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Util().criarTexto("XXX", 20, false, Colors.brown),
              const SizedBox(width: 20,),
              Util().criarTexto("YYY", 20, false, Colors.brown),
            ],
          ),
          ]
        ),
      );
  }
}