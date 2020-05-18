import 'dart:convert';
import 'dart:io';

import 'package:proyectorainbox/const/Constants.dart';
import 'package:proyectorainbox/model/api_response_model.dart';
import 'package:proyectorainbox/model/parquear.dart';

import 'package:http/http.dart' as http;

class ParquearApiservice {
  Parquear _parquear;

  Future<ApiResponse> insertParqueos(Parquear parquear) async {
    ApiResponse apiResponse = ApiResponse(statusResponse: 0);
    var body2 = json.encode(parquear.toJson());
    Uri uri = Uri.http(Consts.urlAuthority, Consts.pathServiceParqueo);
    var res = await http.post(uri,
        headers: {HttpHeaders.contentTypeHeader: Consts.contenTypeHeader},
        body: body2);
    var resBody = json.decode(res.body);
    print(res.statusCode);
    print(resBody);

    apiResponse.statusResponse = res.statusCode;

    if (apiResponse.statusResponse == 200) {
      _parquear = Parquear.fromJson(resBody);
      apiResponse.object = _parquear;
    }
    return apiResponse;
  }
  //rajyhdsjrmggjk heroku
  //1020d8c165f18bdba9c737e763b60d8d1b3862c84c0b70da3064c9e3defd8ebe password
  //heroku pg:psql postgresql-curly-55487 --app servicio123rest bsde mantenimiento
  //databse dc3gj60bqi7bga

  Future<ApiResponse> updateParqueos(Parquear parquear) async {
    ApiResponse apiResponse = ApiResponse(statusResponse: 0);
    var body2 = json.encode(parquear.toJson());
    Uri uri =
        Uri.http(Consts.urlAuthority, Consts.pathServiceupdateparque);
    var res = await http.put(uri,
        headers: {HttpHeaders.contentTypeHeader: Consts.contenTypeHeader},
        body: body2);

    var resBody = json.decode(res.body);
    apiResponse.statusResponse = res.statusCode;

    if (apiResponse.statusResponse == 200) {
      _parquear = Parquear.fromJson(resBody);
      apiResponse.object = _parquear;
    }
    return apiResponse;
  }

  Future<ApiResponse> listParqueos() async {
    ApiResponse apiResponse = ApiResponse(statusResponse: 0);
    Uri uri = Uri.http(Consts.urlAuthority, Consts.pathServiceParqueoList);
    var res = await http.get(
      uri,
      headers: {HttpHeaders.contentTypeHeader: Consts.contenTypeHeader},
    );

    var resBody = json.decode(res.body);
    apiResponse.statusResponse = res.statusCode;
    apiResponse.listParqueos = List();

    if (apiResponse.statusResponse == 200) {
      resBody.forEach((i) {
        apiResponse.listParqueos.add(Parquear.fromJson(i));
        return i;
      });

      return apiResponse;
    }
    return apiResponse;
  }

  Future<ApiResponse> deleteParqueos(Parquear parquear) async {
    var queryParameters =  {
       'id':parquear.id
          .toString() //query del id que permite identificr en el servicion el acceso
    };
    ApiResponse apiResponse = ApiResponse(statusResponse: 0);

    Uri uri = Uri.http(Consts.urlAuthority,
        Consts.pathServiceParqueDelete, queryParameters );
        print(uri);
    var res = await http.delete(uri,
        headers: {HttpHeaders.contentTypeHeader: Consts.contenTypeHeader});

    apiResponse.statusResponse = res.statusCode;

    return apiResponse;
  }
}
