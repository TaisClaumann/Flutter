
import 'package:flutter/material.dart';
import 'package:flutter_01/classes/abastecimento.dart';
import 'package:flutter_01/paginas/cad_abastecimentos.dart';
import 'package:flutter_01/util/componentes.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class Abastecimentos extends StatefulWidget {
  const Abastecimentos({Key? key}) : super(key: key);

  @override
  State<Abastecimentos> createState() => _AbastecimentosState();
}

class _AbastecimentosState extends State<Abastecimentos> {
  List<abastecimento> listaAbastecimentos = [];

  atualizaPagina() {
    setState(() {});
  }

  limpar() {
    setState(() {
      listaAbastecimentos = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Componentes().criaAppBar("Abastecimentos", limpar),
      body: ListView.builder(
        itemCount: listaAbastecimentos.length,
        itemBuilder: (context, indice) {
         return Componentes().criaItemAbastecimento(listaAbastecimentos[indice]); 
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
          size: 25),
        onPressed: () {
          showBarModalBottomSheet(
            context: context,
            builder: (context) =>
                CadAbastecimento(listaAbastecimentos: listaAbastecimentos, atualizaPagina: atualizaPagina),
          );
        },
      ),
    );
  }
}