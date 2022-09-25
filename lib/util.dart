import 'package:flutter/material.dart';

class util {
  criaTitulo(conteudo) {
    return AppBar(
      title: Text(conteudo),
      backgroundColor: Colors.green,
      centerTitle: true,
      actions: [
        Row(
          children: <Widget>[
            criaIconButton(Icons.refresh, null, Colors.white),
          ],
        ),
      ],
    );
  }

  criaIconButton(icon, acao, corIcon) {
    return Row(
      children: <Widget>[
        IconButton(
          onPressed: acao,
          icon: Icon(icon, color: corIcon),
        ),
      ],
    );
  }

  criaIcon() {
    return Icon(
      Icons.person_outline,
      color: Colors.green,
      size: 150,
    );
  }
}
