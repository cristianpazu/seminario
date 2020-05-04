import 'package:proyectorainbox/apiservice/person_api_service.dart';
import 'package:proyectorainbox/model/api_response_model.dart';
import 'package:proyectorainbox/model/regitro.dart';

class Repository {
  final productApiService = ProductApiService();
  

  Future<ApiResponse> registrarProducto(Product product) =>
      productApiService.insertProduct(product);

  

      Future<ApiResponse> listaproducto() =>
      productApiService.listarProducto();


      Future<ApiResponse> actualizarProduct(Product product) =>
      productApiService.updateProduct(product);

      Future<ApiResponse> eliminarProducto(Product product) => 
      productApiService.deleteProduct(product);

   //Future<ApiResponse> listaDiscard() => 
   //discardApiService.listarDiscard();
  
}
