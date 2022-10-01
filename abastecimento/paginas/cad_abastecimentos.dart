import 'package:flutter/cupertino.dart';
import 'package:flutter_01/classes/abastecimento.dart';
import 'package:flutter_01/util/componentes.dart';

class CadAbastecimento extends StatefulWidget {
  List<abastecimento>? listaAbastecimentos;
  Function? atualizaPagina;
  CadAbastecimento({Key? key, this.listaAbastecimentos, this.atualizaPagina}) : super(key: key);

  @override
  State<CadAbastecimento> createState() => _CadAbastecimentoState();
}

class _CadAbastecimentoState extends State<CadAbastecimento> {
  TextEditingController dataController = TextEditingController();
  TextEditingController valorController = TextEditingController();
  TextEditingController combustivelController = TextEditingController();
  GlobalKey<FormState> formController = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    cadastrar() {
      String data = dataController.text;
      double valor = double.parse(valorController.text);
      String combustivel = combustivelController.text;
      abastecimento a = abastecimento(data, valor, combustivel);
      widget.listaAbastecimentos!.add(a);
      widget.atualizaPagina!();
      Navigator.pop(context);
    }

    viabilidade() {
      Navigator.of(context).pushNamed('/combustivel');
    }

    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      padding: const EdgeInsets.all(20),
      child: Form(
        child: Column(
          children: [
            Componentes().criaTexto("Cadastrar abastecimento", 20),
            Componentes().criaTextField("Data", false, TextInputType.datetime, dataController),
            Componentes().criaTextField("Valor", false, TextInputType.number, valorController),
            Componentes().criaTextField("Combustivel", false, TextInputType.datetime, combustivelController),
            const SizedBox(height: 10),
            Componentes().criaBotao("Cadastrar", cadastrar, 50, double.infinity),
            const SizedBox(height: 10),
            Componentes().criaBotao("Viabilidade", viabilidade, 50, double.infinity),
          ],
        ),
      ),
    );
  }
}