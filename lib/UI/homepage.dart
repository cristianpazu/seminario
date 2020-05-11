import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyectorainbox/UI/listarproducto.dart';
import 'package:proyectorainbox/UI/operadores.dart';
import 'package:proyectorainbox/UI/parquear.dart';
import 'package:proyectorainbox/UI/precio.dart';
import 'package:proyectorainbox/UI/prueba.dart';
import 'package:proyectorainbox/UI/registrope.dart';
import 'package:proyectorainbox/UI/listaParqueos.dart';
import 'package:flutter/services.dart';

import '../main.dart';

class Iniciopage extends StatefulWidget {
  Iniciopage({Key key}) : super(key: key);
  @override
  IniciopageState createState() => IniciopageState();
}

class IniciopageState extends State<Iniciopage> {
  @override
  Widget build(BuildContext context) {
    // FullScreen
    SystemChrome.setEnabledSystemUIOverlays([]);

    return Scaffold(
        appBar: AppBar(
          //backgroundColor: Color(0xFF151026),
          backgroundColor: Colors.yellow,
          title: Text(
            'Parqueadero Menu',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.traffic, color: Colors.black), onPressed: null)
          ],
        ),
        body: CustomScrollView(
          primary: false,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(20),
              sliver: SliverGrid.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  //To Registro
                  InkWell(
                    highlightColor: Colors.orange,
                    splashColor: Colors.black,
                    child: Container(
                      color: Colors.orange[300].withOpacity(0.5),
                      child: Container(
                        padding: const EdgeInsets.all(50),
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.person_add,
                            ),
                            const Text('Registro'),
                          ],
                        ),
                      ),

                      //const Text('He\'d have you all unravel at the'),
                    ),
                    onTap: () => {
                      Navigator.of(context).push(CupertinoPageRoute(
                          builder: (BuildContext context) => Registropage())),
                    },
                  ),
                  //To Personas lista
                  InkWell(
                    highlightColor: Colors.orange,
                    splashColor: Colors.black,
                    child: Container(
                      color: Colors.orange[600].withOpacity(0.5),
                      child: Container(
                        padding: const EdgeInsets.all(40),
                        child: Column(
                          children: <Widget>[
                            //Icon(Icons.report_problem),
                            Icon(Icons.people),
                            const Text('Personas'),
                          ],
                        ),
                      ),
                      padding: const EdgeInsets.all(8),
                    ),
                    onTap: () => {
                      Navigator.of(context).push(CupertinoPageRoute(
                          builder: (BuildContext context) => ListaProducto())),
                    },
                  ),
                  //To Parquear
                  InkWell(
                    highlightColor: Colors.orange,
                    splashColor: Colors.black,
                    child: Container(
                      color: Colors.orange[700].withOpacity(0.5),
                      child: Container(
                        padding: const EdgeInsets.all(40),
                        child: Column(
                          children: <Widget>[
                            //Icon(Icons.report_problem),
                            Icon(
                              Icons.local_parking,
                            ),
                            const Text('Registro'),
                          ],
                        ),
                      ),
                      padding: const EdgeInsets.all(8),
                    ),
                    onTap: () => {
                      Navigator.of(context).push(CupertinoPageRoute(
                          builder: (BuildContext context) => Parquepage())),
                    },
                  ),
                  //To Vehiculos lista
                  InkWell(
                    highlightColor: Colors.orange,
                    splashColor: Colors.black,
                    child: Container(                      
                      color: Colors.red[700].withOpacity(0.5),
                      child: Container(
                        padding: const EdgeInsets.all(40),
                        child: Column(
                          children: <Widget>[
                            //Icon(Icons.report_problem),
                            Icon(Icons.directions_car),
                            const Text('Parqueo'),
                          ],
                        ),
                      ),
                      padding: const EdgeInsets.all(8),
                    ),
                    onTap: () => {
                      Navigator.of(context).push(CupertinoPageRoute(
                          builder: (BuildContext context) => ListaParqueos())),
                    },
                  ),
                ],
              ),
            ),
          ],
        )

        ///
        );
  }
}
