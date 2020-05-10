import 'package:proyectorainbox/model/regitro.dart';

import 'regitro.dart';

class Parquear{
  int id;
  String estado;
  Product product;

  Parquear({this.id,this.estado,this.product});

  factory Parquear.fromJson(Map<String, dynamic>parsedJson){
  return Parquear(
    id: parsedJson['id'],
    product: Product.fromJson(parsedJson['product']),
    estado: parsedJson['estado'],
    
  );
  }
   Map<String, dynamic> toJson() => {
        'id': id,
        'estado': estado,
        'product': product,
      };

}