
import 'package:proyectorainbox/model/parquear.dart';
import 'package:proyectorainbox/model/regitro.dart';


class  ApiResponse {

  int statusResponse;
  String message;
  Object object;


  List<Product>listProducto = List();
  List<Parquear>listParqueos = List();

    ApiResponse({this.statusResponse, this.object, this.message});
    factory ApiResponse.fromJson(Map<String, dynamic> json) {
    return ApiResponse(
        statusResponse: json['statusResponse'], object: json['object']);
  }

  Map<String, dynamic> toJson() =>
      {'statusResponse': statusResponse, 'object': object};
}