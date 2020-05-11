import 'package:proyectorainbox/model/regitro.dart';

import 'regitro.dart';

class Parquear {
  int id;
  String estado;
  Product persona;

  Parquear({this.id, this.estado, this.persona});

  factory Parquear.fromJson(Map<String, dynamic> parsedJson) {
    return Parquear(
        id: parsedJson['id'],
        persona: Product.fromJson(parsedJson['persona']),
        estado: parsedJson['estado']);
  }

  Map<String, dynamic> toJson() =>
      {'id': id, 'estado': estado, 'persona': persona.toJson()};
}
