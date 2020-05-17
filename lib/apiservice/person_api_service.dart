import 'dart:convert';
import 'dart:io';

import 'package:proyectorainbox/const/Constants.dart';
import 'package:proyectorainbox/model/api_response_model.dart';
import 'package:proyectorainbox/model/regitro.dart';

import 'package:http/http.dart' as http;

class ProductApiService {
  Product _product;
  ProductApiService();

  Future<ApiResponse> insertProduct(Product product) async {
    ApiResponse apiResponse = ApiResponse(statusResponse: 0);
    var body2 = json.encode(product.toJson());
    Uri uri = Uri.http(Consts.urlAuthority, Consts.pathServiceProduct);
    var res = await http.post(uri,
        headers: {HttpHeaders.contentTypeHeader: Consts.contenTypeHeader},
        body: body2);
    var resBody = json.decode(res.body);
    print(res.statusCode);
    print(resBody);

    apiResponse.statusResponse = res.statusCode;

    if (apiResponse.statusResponse == 200) {
      _product = Product.fromJson(resBody);
      apiResponse.object = _product;
    }
    return apiResponse;
  }
  //rajyhdsjrmggjk heroku
  //1020d8c165f18bdba9c737e763b60d8d1b3862c84c0b70da3064c9e3defd8ebe password
  //heroku pg:psql postgresql-curly-55487 --app servicio123rest bsde mantenimiento
  //databse dc3gj60bqi7bga

  Future<ApiResponse> updateProduct(Product product) async {
    ApiResponse apiResponse = ApiResponse(statusResponse: 0);
    var body2 = json.encode(product.toJson());
    Uri uri =
        Uri.http(Consts.urlAuthority, Consts.pathServiceupdate);
    var res = await http.put(uri,
        headers: {HttpHeaders.contentTypeHeader: Consts.contenTypeHeader},
        body: body2);

    var resBody = json.decode(res.body);
    apiResponse.statusResponse = res.statusCode;

    if (apiResponse.statusResponse == 200) {
      _product = Product.fromJson(resBody);
      apiResponse.object = _product;
    }
    return apiResponse;
  }

  Future<ApiResponse> listarProducto() async {
    ApiResponse apiResponse = ApiResponse(statusResponse: 0);
    Uri uri = Uri.http(Consts.urlAuthority, Consts.pathServiceProductoLista);
    var res = await http.get(
      uri,
      headers: {HttpHeaders.contentTypeHeader: Consts.contenTypeHeader},
    );

    var resBody = json.decode(res.body);
    apiResponse.statusResponse = res.statusCode;
    apiResponse.listProducto = List();

    if (apiResponse.statusResponse == 200) {
      resBody.forEach((i) {
        apiResponse.listProducto.add(Product.fromJson(i));
        return i;
      });

      return apiResponse;
    }
    return apiResponse;
  }

  Future<ApiResponse> deleteProduct(Product product) async {
    var queryParameters = {
      'id': product.id
          .toString(), //query del id que permite identificr en el servicion el acceso
    };
    ApiResponse apiResponse = ApiResponse(statusResponse: 0);

    Uri uri = Uri.http(Consts.urlAuthority,
        Consts.pathServiceParqueDelete, queryParameters);
    var res = await http.delete(uri,
        headers: {HttpHeaders.contentTypeHeader: Consts.contenTypeHeader});

    apiResponse.statusResponse = res.statusCode;

    return apiResponse;
  }
}
