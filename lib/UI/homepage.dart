import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyectorainbox/UI/listaParqueos.dart';
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
          title: Center(
            child: Text(
              'Bienvenido a parqueo',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
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
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
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
                  InkWell(
                    highlightColor: Colors.orange,
                    splashColor: Colors.black,
                    child: Container(
                      padding: const EdgeInsets.all(45),
                      color: Colors.red[900].withOpacity(0.5),
                      child: Column(
                        children: <Widget>[
                          //Icon(Icons.report_problem),
                          Icon(Icons.time_to_leave),
                          const Text('Parqueos'),
                        ],
                      ),
                    ),
                    onTap: () => {
                      Navigator.of(context).push(CupertinoPageRoute(
                          builder: (BuildContext context) => ListaParqueos())),
                    },
                  ),
                  /* Container(
            child: Column(
             children: <Widget>[
               //Icon(Icons.report_problem),
               Icon(Icons.report_problem),
              const Text('en construccion...'),
             ],
           ),
            padding: const EdgeInsets.all(8),
          
            color: Colors.red[500],
          ),
          
          Container(
            child: Column(
             children: <Widget>[
               //Icon(Icons.report_problem),
               Icon(Icons.report_problem),
              const Text('en construccion...'),
             ],
           ),
            padding: const EdgeInsets.all(8),
       
            color: Colors.red[600],
          ),*/
                ],
              ),
            ),
          ],
        )

        ///
        );
  }
}
/* Row(
          children: <Widget>[
            Expanded(
              child: Container(
                  child: Card(
                elevation: 24,
                child: ListTile(title: Text('Registro'),
                onTap: (){
                   Navigator.of(context).push(CupertinoPageRoute(
                  builder: (BuildContext context)=>Registropage()));

                },
                
                ),
              )),
            ),
              Expanded(
            child: Container(
              child: Card(
                elevation: 24,
                child: ListTile(
                  title: Text('parquear'),
               onTap:(){
                Navigator.of(context).push(CupertinoPageRoute(
                  builder: (BuildContext context)=>Parquepage()));

               } ,
                
                ),
                
              ),
              ),
              ),
 Expanded(
            child: Container(
              child: Card(
                elevation: 24,
                
                child: ListTile(
                  title: Text('lista')
                ),
              ),
              ),
              ),
 Expanded(
            child: Container(
              child: Card(
                elevation: 24,
                child: ListTile(
                  title: Text(' precio'),
                    onTap:(){
                Navigator.of(context).push(CupertinoPageRoute(
                  builder: (BuildContext context)=>Preciopage()));

               } ,
                ),
              ),
              ),
              ),
            ),
          ],
        )

        ///
        );
  }
}*/
