import 'package:flutter/cupertino.dart';
import 'package:proyectorainbox/Const/Constants.dart';
import 'package:proyectorainbox/model/api_response_model.dart';
import 'package:proyectorainbox/model/parquear.dart';
import 'package:proyectorainbox/repository/repository.dart';

class ParquearBloc{
/*var _apiResponse = ApiResponse();
  final Repository _repository = Repository();
  ApiResponse get apiResponse => _apiResponse;

  ParquearBloc(BuildContext context);

  Future<ApiResponse> createProduct(Parquear parquear) async {
    ApiResponse apiResponse = await _repository.registrarProducto(parquear);
    if (apiResponse.statusResponse == 200) {
      apiResponse.message = Const.createMessage;
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
      apiResponse.message = Const.createMessage;
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

 Future<ApiResponse> deleteProducto(Parquear parquear) async {
    ApiResponse apiResponse =
        await _repository.eliminarProducto(parquear);
    if (apiResponse.statusResponse == 200) {
      apiResponse.message = Const.createMessage;
      print(apiResponse.message);
    } else {
      print("el código del error" +
          apiResponse.statusResponse.toString() +
          " El mensaje de error es: " +
          apiResponse.message);
    }
    return apiResponse;
  }

  
   Future<ApiResponse> updateProduct(Parquear parquear) async {
    ApiResponse apiResponse = await _repository.actualizarProduct(parquear);
    if (apiResponse.statusResponse == 200) {
      apiResponse.message = Const.createMessage;
      print(apiResponse.message);
    } else {
      print("el código del error" +
          apiResponse.statusResponse.toString() +
          " El mensaje de error es: " +
          apiResponse.message);
    }
    return apiResponse;
  }
*/

}

