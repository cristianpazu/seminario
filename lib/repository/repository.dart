import 'package:proyectorainbox/apiservice/parquear_api_service.dart';
import 'package:proyectorainbox/apiservice/parquear_api_service.dart';
import 'package:proyectorainbox/apiservice/person_api_service.dart';
import 'package:proyectorainbox/model/api_response_model.dart';
import 'package:proyectorainbox/model/parquear.dart';
import 'package:proyectorainbox/model/regitro.dart';

class Repository {
  final ProductApiService productApiService = ProductApiService();
  final ParquearApiservice parquearApiservice = ParquearApiservice();

  Future<ApiResponse> registrarProducto(Product product) =>
      productApiService.insertProduct(product);

  Future<ApiResponse> listaproducto() => productApiService.listarProducto();

  Future<ApiResponse> actualizarProduct(Product product) =>
      productApiService.updateProduct(product);

  Future<ApiResponse> eliminarProducto(Product product) =>
      productApiService.deleteProduct(product);

  //parqueos

  Future<ApiResponse> registarParqueo(Parquear parquear) =>
      parquearApiservice.insertParqueos(parquear);

  Future<ApiResponse> listaParquear() => parquearApiservice.listParqueos();

  Future<ApiResponse> actualizarParquear(Parquear parquear) =>
      parquearApiservice.updateParqueos(parquear);

  Future<ApiResponse> eliminarParquear(Parquear parquear) =>
      parquearApiservice.deleteParqueos(parquear);

  //Future<ApiResponse> listaDiscard() =>
  //discardApiService.listarDiscard();

}
