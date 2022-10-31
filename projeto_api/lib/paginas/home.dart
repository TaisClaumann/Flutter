import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projeto_api/paginas/cadastro.dart';
import 'package:projeto_api/paginas/consulta.dart';
import 'package:projeto_api/util/componentes.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<FormState> formController = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    home() {
      Navigator.of(context).pushReplacementNamed("/home");
    }

    cadastro() {
      Navigator.of(context).pushReplacementNamed("/cadastro");
    }

    consulta() {
      Navigator.of(context).pushReplacementNamed("/consulta");
    }

    return Scaffold(
      appBar: Componentes().criaAppBar("Utilização API", home),
      body: Form(
        key: formController,
        child: Column(
          children: [
            Componentes()
                .criaBotao(formController, cadastro, "Cadastro Pessoa"),
            Componentes()
                .criaBotao(formController, consulta, "Consulta Pessoa"),
          ],
        ),
      ),
    );
  }
}
