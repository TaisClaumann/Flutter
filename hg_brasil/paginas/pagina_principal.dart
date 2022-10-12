import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hg_brasil/util/componentes.dart';
import 'package:http/http.dart';

class PaginaPrincipal extends StatefulWidget {
  const PaginaPrincipal({super.key});

  @override
  State<PaginaPrincipal> createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  TextEditingController hgController = TextEditingController();
  GlobalKey<FormState> formController = GlobalKey<FormState>();

  String valorCompra = "Valor de Compra:";
  String valorVenda = "Valor de Venda:";
  String nome = "Nome:";

  limparTela() {
    setState(() {
      nome = "Nome:";
      valorCompra = "Valor de Compra:";
      valorVenda = "Valor de Venda:";
      hgController.text = "";
      formController = GlobalKey<FormState>();
    });
  }

  buscarDolar() async {
    String url =
        "https://api.hgbrasil.com/finance?format=json-cors&key=1a5e6380";
    Response resposta = await get(Uri.parse(url));
    Map moeda = json.decode(resposta.body);
    setState(() {
      nome = "Nome: ${moeda['results']['currencies']['USD']['name']}";
      valorCompra =
          "Valor de Compra: ${moeda['results']['currencies']['USD']['buy']}";
      valorVenda =
          "Valor de Venda: ${moeda['results']['currencies']['USD']['sell']}";
    });
  }

  buscarEuro() async {
    String url =
        "https://api.hgbrasil.com/finance?format=json-cors&key=1a5e6380";
    Response resposta = await get(Uri.parse(url));
    Map moeda = json.decode(resposta.body);
    setState(() {
      nome = "Nome: ${moeda['results']['currencies']['EUR']['name']}";
      valorCompra =
          "Valor de Compra: ${moeda['results']['currencies']['EUR']['buy']}";
      valorVenda =
          "Valor de Venda: ${moeda['results']['currencies']['EUR']['sell']}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Componentes().criaAppBar("HG Brasil", limparTela),
      body: Form(
        key: formController,
        child: Column(
          children: [
            const SizedBox(height: 30),
            Componentes().iconeGrande(),
            Componentes()
                .criaInputTexto(TextInputType.number, "Valor", hgController),
            Componentes().criaBotao(formController, buscarDolar, "Dólar"),
            Componentes().criaBotao(formController, buscarEuro, "Euro"),
            Componentes().criaContainerDados(valorCompra, valorVenda, nome),
          ],
        ),
      ),
    );
  }
}
