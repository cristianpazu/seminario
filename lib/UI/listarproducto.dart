import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyectorainbox/bloc/personbloc.dart';
import 'package:proyectorainbox/model/api_response_model.dart';
import 'package:proyectorainbox/model/regitro.dart';

import 'actualizar.dart';


class ListaProducto extends StatefulWidget {
  const ListaProducto({Key key}) : super(key: key);

  @override
  ListaProductoState createState() => ListaProductoState();
}

class ListaProductoState extends State<ListaProducto>
    with SingleTickerProviderStateMixin {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  ProductBloc productBloc;
  ApiResponse apiResponse;
  Product product;

  void showInSnackBar(String value) {
    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text(value),
    ));
  }

  List<Product> listProducto = List();

  _handleSubmitted() {
    productBloc.listarProducto().then((apiResponse) {
      setState(() {
        listProducto = apiResponse.listProducto;
      });
    });
  }

  void _delete(Product product) {
    productBloc.deleteProducto(product);
  }

  @override
  void initState() {
    super.initState();
    productBloc = ProductBloc();

    _handleSubmitted();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Registro de carros'),
        
      ),

      //body
      body: Container(
        child: ListView.builder(
            itemCount: listProducto.length,
            padding: EdgeInsets.only(top: 3.0),
            itemBuilder: (BuildContext context, int indice) {
              return Column(children: <Widget>[
                Divider(
                  height: 1.0,
                ),
                Container(
                  padding: new EdgeInsets.all(3.0),
                  child: Card(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: ListTile(
                            title: Text(
                              "Nombre : ${listProducto[indice].nombre}",
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 21.0,
                              ),
                            ),
                            subtitle: Text(
                               "Placa : ${listProducto[indice].placa.toString()}",
                              //"Id : ${listProducto[indice].id.toString()}",
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 21.0,
                              ),
                            ),
                            
                            leading: Icon(
                              Icons.content_paste,
                              color: Colors.orange),
                            onTap: () {
                              print(listProducto[indice].nombre);
                              product = listProducto[indice];
                            
                  Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                               ActualizarPersona( product:product)));
                            },
                          ),
                        ),
                       
                      ],
                    ),
                    color: Colors.white,
                  ),
                ),
              ]);
            }),
      ));
      
  }
    }
      

