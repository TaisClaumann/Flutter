import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_01/classes/abastecimento.dart';

class Componentes {
  criaAppBar(texto, acao) {
    return AppBar(
      title: criaTexto(texto, 30),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.refresh),
          onPressed: acao,
        )
      ],
    );
  }

  criaTexto(conteudo, tamanho) {
    return Text(
      conteudo,
      style: TextStyle(
        fontSize: tamanho,
      ),
    );
  }

  criaTextField(titulo, senha, tipoTeclado, controlador) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextField(
        controller: controlador,
        keyboardType: tipoTeclado,
        obscureText: senha,
        decoration: InputDecoration(
          labelText: titulo,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }

  criaTextFieldCalendario(titulo, senha, tipoTeclado, controlador) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextField(
        controller: controlador,
        keyboardType: tipoTeclado,
        obscureText: senha,
        decoration: InputDecoration(
          labelText: titulo,
          border: const OutlineInputBorder(
        ),
      ),
      )
    );
  }

  criaBotao(rotulo, funcao, altura, largura) {
    return SizedBox(
      height: altura,
      width: largura,
      child: ElevatedButton(
        onPressed: funcao,
        child: criaTexto(rotulo, 20),
      ),
    );
  }

  criaItemAbastecimento(abastecimento a) {
    Color cor = a.combustivel == 'Gasolina' ? Color.fromARGB(255, 236, 213, 5) : Colors.orange;
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: cor,
        child: Icon(
          Icons.oil_barrel,
          color: Colors.white,
        ),
        ),
        title: Text(a.data),
        subtitle: Text(a.combustivel),
        trailing: Text('R\$ ${a.valor}'),

    ); 
  }
}