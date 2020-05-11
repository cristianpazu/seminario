import 'package:flutter/cupertino.dart';
import 'package:proyectorainbox/const/Constants.dart';

import 'package:proyectorainbox/model/api_response_model.dart';
import 'package:proyectorainbox/model/parquear.dart';
import 'package:proyectorainbox/repository/repository.dart';

class ParquearBloc{
var _apiResponse = ApiResponse();
  final Repository _repository = Repository();
  ApiResponse get apiResponse => _apiResponse;

  ParquearBloc();

  Future<ApiResponse> createParquear(Parquear parquear) async {
    ApiResponse apiResponse = await _repository.registarParqueo(parquear);
    if (apiResponse.statusResponse == 200) {
      apiResponse.message = Consts.createMessage;
      print(apiResponse.message);
    } else {
      print("el código del error" +
          apiResponse.statusResponse.toString() +
          " El mensaje de error es: " +
          apiResponse.message);
    }
    return apiResponse;
  }

  Future<ApiResponse>listarParquear()async{
    ApiResponse apiResponse = await _repository.listaParquear();
    if (apiResponse.statusResponse == 200) {
      apiResponse.message = Consts.createMessage;
      print(apiResponse.message);
      return apiResponse;
    } else {
      print("el código del error" +
          apiResponse.statusResponse.toString() +
          " El mensaje de error es: " +
          apiResponse.message);
      return apiResponse;
    }
  }

 Future<ApiResponse> deleteParquear(Parquear parquear) async {
    ApiResponse apiResponse =
        await _repository.eliminarParquear(parquear);
    if (apiResponse.statusResponse == 200) {
      apiResponse.message = Consts.createMessage;
      print(apiResponse.message);
    } else {
      print("el código del error" +
          apiResponse.statusResponse.toString() +
          " El mensaje de error es: " +
          apiResponse.message);
    }
    return apiResponse;
  }

  
   Future<ApiResponse> updateParquear(Parquear parquear) async {
    ApiResponse apiResponse = await _repository.actualizarParquear(parquear);
    if (apiResponse.statusResponse == 200) {
      apiResponse.message = Consts.createMessage;
      print(apiResponse.message);
    } else {
      print("el código del error" +
          apiResponse.statusResponse.toString() +
          " El mensaje de error es: " +
          apiResponse.message);
    }
    return apiResponse;
  }

}

