import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projeto_api/api/acesso_api.dart';
import 'package:projeto_api/model/cidade.dart';
import 'package:projeto_api/model/pessoa.dart';
import 'package:projeto_api/util/combo_cidade.dart';
import 'package:projeto_api/util/componentes.dart';
import 'package:projeto_api/util/radio_sexo.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  GlobalKey<FormState> formController = GlobalKey<FormState>();
  TextEditingController txtNome = TextEditingController();
  TextEditingController txtSexo = TextEditingController(text: "M");
  TextEditingController txtIdade = TextEditingController();
  TextEditingController txtCidade = TextEditingController();

  @override
  Widget build(BuildContext context) {
    cadastrar() {
      Pessoa p = Pessoa(Cidade(int.parse(txtCidade.text), "", ""), 0,
          int.parse(txtIdade.text), txtNome.text, txtSexo.text);
      AcessoApi().inserePessoa(p.toJson());
      Navigator.of(context).pushReplacementNamed("/consulta");
    }

    home() {
      Navigator.of(context).pushReplacementNamed("/home");
    }

    return Scaffold(
      appBar: Componentes().criaAppBar("Utilização API", home),
      body: Form(
        key: formController,
        child: Column(
          children: [
            Componentes().criaImputTexto(
                TextInputType.text, "Nome", txtNome, "Informe o nome"),
            Componentes().criaImputTexto(
                TextInputType.number, "Idade", txtIdade, "Informe a idade"),
            Center(
              child: RadioSexo(
                controller: txtSexo,
              ),
            ),
            Center(
              child: ComboCidade(
                controller: txtCidade,
              ),
            ),
            Componentes().criaBotao(formController, cadastrar, "Cadastrar"),
          ],
        ),
      ),
    );
  }
}
