import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Util{
  criarAppBar(texto, tam, negrito, cor, centralizado) {
    return AppBar(
      
      title: criarTexto(texto, tam, negrito, cor),
      centerTitle: centralizado,
      actions: [
        FlutterLogo(
              size: 100,
            ),
      ],
    );
  }

  criarTexto(conteudo, tam, negrito, cor) {
    return Text(
      conteudo,
      style: TextStyle(
        fontSize: tam,
        color: cor,
        fontWeight: negrito ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }

 
  
}