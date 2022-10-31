import 'dart:convert';

import 'package:http/http.dart';
import 'package:projeto_api/model/cidade.dart';
import 'package:projeto_api/model/pessoa.dart';

class AcessoApi {
  Future<List<Pessoa>> listaPessoas() async {
    String url = "http://localhost:8080/cliente";
    Response resposta = await get(Uri.parse(url));
    String jsonFormatadoUft8 = (utf8.decode(resposta.bodyBytes));
    Iterable a = json.decode(jsonFormatadoUft8);
    List<Pessoa> pessoas = List<Pessoa>.from(a.map((p) => Pessoa.fromJson(p)));
    return pessoas;
  }

  Future<List<Cidade>> listaCidades() async {
    String url = "http://localhost:8080/cidade";
    Response resposta = await get(Uri.parse(url));
    String jsonFormatadoUft8 = (utf8.decode(resposta.bodyBytes));
    Iterable a = json.decode(jsonFormatadoUft8);
    List<Cidade> cidades = List<Cidade>.from(a.map((c) => Cidade.fromJson(c)));
    return cidades;
  }

  Future<void> inserePessoa(Map<String, dynamic> pessoa) async {
    String url = "http://localhost:8080/cliente";
    Map<String, String> headers = {
      'Content-Type': 'application/json; charset-UTF-8'
    };
    Response resposta =
        await post(Uri.parse(url), headers: headers, body: json.encode(pessoa));
  }
}
