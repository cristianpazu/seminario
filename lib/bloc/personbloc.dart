import 'package:flutter/material.dart';
import 'package:proyectorainbox/const/Constants.dart';
import 'package:proyectorainbox/model/api_response_model.dart';
import 'package:proyectorainbox/model/regitro.dart';
import 'package:proyectorainbox/repository/repository.dart';
//import 'package:proyectov2/apiService/api_response_model.dart';


class ProductBloc {
  final Repository _repository = Repository();
    var _apiResponse = ApiResponse();

  ApiResponse get apiResponse => _apiResponse;

  ProductBloc();

  Future<ApiResponse> createProduct(Product product) async {
    ApiResponse apiResponse = await _repository.registrarProducto(product);
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

  Future<ApiResponse>listarProducto()async{
    ApiResponse apiResponse = await _repository.listaproducto();
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

 Future<ApiResponse> deleteProducto(Product product) async {
    ApiResponse apiResponse =
        await _repository.eliminarProducto(product);
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

  
   Future<ApiResponse> updateProduct(Product product) async {
    ApiResponse apiResponse = await _repository.actualizarProduct(product);
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