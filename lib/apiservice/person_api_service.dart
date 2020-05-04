import 'dart:convert';
import 'dart:io';
import 'package:proyectorainbox/Const/Constants.dart';
import 'package:proyectorainbox/model/api_response_model.dart';
import 'package:proyectorainbox/model/regitro.dart';

import 'package:http/http.dart' as http;



class ProductApiService {
  Product _product;
  ProductApiService();

  Future<ApiResponse> insertProduct(Product product) async{
    ApiResponse apiResponse = ApiResponse(statusResponse: 0);
    var body2 = json.encode(product.toJson());
    Uri uri = Uri.http(Const.urlAuthority, Const.pathServiceProduct);
    var res = await http.post(uri,
        headers: {HttpHeaders.contentTypeHeader: Const.contenTypeHeader},
        body: body2);

    var resBody = json.decode(res.body);
    apiResponse.statusResponse = res.statusCode;

    if (apiResponse.statusResponse == 200) {
      _product = Product.fromJson(resBody);
      apiResponse.object = _product;
    }
    return apiResponse;
  }

   Future<ApiResponse> updateProduct(Product product) async {
    ApiResponse apiResponse = ApiResponse(statusResponse: 0);
    var body2 = json.encode(product.toJson());
    Uri uri =
        Uri.http(Const.urlAuthority, Const.pathServiceDiscardDelete);
    var res = await http.put(uri,
        headers: {HttpHeaders.contentTypeHeader: Const.contenTypeHeader},
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
    Uri uri =
        Uri.http(Const.urlAuthority, Const.pathServiceProductoLista);
    var res = await http.get(
      uri,
      headers: {HttpHeaders.contentTypeHeader: Const.contenTypeHeader, 
      HttpHeaders.authorizationHeader: Const.contenTypeHeader },
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

    Uri uri = Uri.http(Const.urlAuthority,
        Const.pathServiceProductDelete, queryParameters);
    var res = await http.delete(uri,
        headers: {HttpHeaders.contentTypeHeader: Const.contenTypeHeader, 
        HttpHeaders.authorizationHeader: Const.contenTypeHeader});

    apiResponse.statusResponse = res.statusCode;

    return apiResponse;
  }
}