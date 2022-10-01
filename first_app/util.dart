import 'package:flutter/material.dart';

class util {
  criaTitulo(funcao) {
    return AppBar(
        title: Text('Calculadora de IMC'),
        backgroundColor: Colors.green,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: funcao,
            icon: const Icon(Icons.refresh),
          ),
        ]);
  }

  criaTexto(mensagem) {
    return Text(
      mensagem,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Colors.green,
        fontSize: 20.0,
      ),
    );
  }

  criaIcon() {
    return const Icon(
      Icons.person_outline,
      size: 150.0,
      color: Colors.green,
    );
  }

  criaInputText(tipoTeclado, textoEtiqueta, controlador, msgValidacao) {
    return TextFormField(
      keyboardType: tipoTeclado,
      decoration: InputDecoration(
        labelText: textoEtiqueta,
        labelStyle: const TextStyle(
          color: Colors.green,
        ),
      ),
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Colors.green,
        fontSize: 25.0,
      ),
      controller: controlador,
      validator: ((value) {
        if (value!.isEmpty) {
          return msgValidacao;
        }
      }),
    );
  }

  criaBotao(controladorFormulario, funcao, titulo) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
            height: 70,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
              onPressed: () {
                if (controladorFormulario.currentState!.validate()) {
                  funcao();
                }
              },
              child: Text(
                titulo,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
