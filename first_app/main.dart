import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();

  GlobalKey<FormState> formController = GlobalKey<FormState>();

  String msg = "Informe seus dados";

  limparCampos() {
    pesoController.text = '';
    alturaController.text = '';
    setState(() {
      msg = "Informe seus dados";
      formController = GlobalKey<FormState>();
    });
  }

  calcularIMC() {
    setState(() {
      double peso = double.parse(pesoController.text);
      double altura = double.parse(alturaController.text);
      double imc = peso / (altura * altura);
      String imcText = imc.toStringAsPrecision(4);

      if (imc < 18.6) {
        msg = "Abaixo do peso ($imcText)";
      } else if (imc > 18.6 && imc < 24.9) {
        msg = "Abaixo do ideal ($imcText)";
      } else {
        msg = "Acima do peso ($imcText)";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: util().criaTitulo(limparCampos),
        body: Container(
          color: Colors.white,
          child: Form(
            key: formController,
            child: Column(
              children: [
                const SizedBox(height: 20),
                util().criaIcon(),
                util().criaInputText(TextInputType.number, 'Peso(Kg)',
                    pesoController, 'Informe o seu peso'),
                util().criaInputText(TextInputType.number, 'Altura',
                    alturaController, 'Informe a sua altura'),
                util().criaBotao(formController, calcularIMC, 'Calcular'),
                util().criaTexto(msg),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
