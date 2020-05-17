



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyectorainbox/UI/parquear.dart';
import 'package:proyectorainbox/bloc/parquearbloc.dart';
import 'package:proyectorainbox/model/api_response_model.dart';
import 'package:proyectorainbox/model/parquear.dart';

class ListaParqueos extends StatefulWidget {
  const ListaParqueos({Key key}) : super(key: key);

  @override
  ListaParqueosState createState() => ListaParqueosState();
}

class ListaParqueosState extends State<ListaParqueos>
    with SingleTickerProviderStateMixin {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  ParquearBloc parquearBloc;
  ApiResponse apiResponse;
  Parquear parquear;

  void showInSnackBar(String value) {
    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text(value),
    ));
  }

  List<Parquear> listParquear = List();

  _handleSubmitted() {
    parquearBloc.listarParquear().then((apiResponse) {
      setState(() {
        listParquear = apiResponse.listParqueos;
      });
    });
  }

  void _delete(Parquear parquear) {
    parquearBloc.deleteParquear(parquear);
  }


  @override
  void initState() {
    super.initState();
    parquearBloc = ParquearBloc();

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
              itemCount: listParquear.length,
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
                                "Placa de Vehiculo : ${listParquear[indice].persona.placa}",
                                style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 21.0,
                                ),
                              ),
                              subtitle: Text(
                                "Propietario : ${listParquear[indice].persona.nombre.toString()}",
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
                                print(listParquear[indice].persona.nombre);
                                parquear = listParquear[indice];
                              },
                            ),
                            
                          ),
                          IconButton(
                          icon: Icon(
                            Icons.insert_drive_file,
                            color: Colors.blue,
                          ),
                          onPressed: () {
                            
                          
                                  parquear = listParquear[indice];
                             _delete(parquear);
                            
                          },
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