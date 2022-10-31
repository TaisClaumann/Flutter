import 'package:projeto_api/model/cidade.dart';

class Pessoa {
  int id, idade;
  String nome, sexo;
  Cidade cidade;

  Pessoa(this.cidade, this.id, this.idade, this.nome, this.sexo);

  factory Pessoa.fromJson(dynamic json) {
    return Pessoa(Cidade.fromJson(json["cidade"]), json["id"] as int,
        json["idade"] as int, json["nome"] as String, json["sexo"] as String);
  }

  Map<String, dynamic> toJson() => {
        if (id != 0) 'id': id,
        'nome': nome,
        'sexo': sexo,
        'idade': idade,
        'cidade': cidade.toJson()
      };
}
