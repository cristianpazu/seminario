import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyectorainbox/const/const.dart';

class Registropage extends StatelessWidget{
  /*Registropage({Key key}) : super (key: key);

@override
RegistropageState createState()=> RegistropageState();
}

class RegistropageState extendsState<Registropage> 
with SingleTickerProviderStateMixin{
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
}*/

@override

Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Registro de personas')
    ),
    body: SingleChildScrollView(
      child: Center(
        child: Column(
          children: <Widget>[
            Padding(padding: const EdgeInsets.all(20),),
           TextField(
             decoration: InputDecoration(
               hintText: Const.nombre,
               labelText: Const.nombre,
               icon: Icon(Icons.create),
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20.0)
               )

                ),
           ),
           //
Padding(padding: const EdgeInsets.all(20),),
           TextField(
             decoration: InputDecoration(
               hintText: Const.apellido,
               labelText: Const.apellido,
               icon: Icon(Icons.create),
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20.0)
               )

                ),
           ),
           //
           Padding(padding: const EdgeInsets.all(20),),
           TextField(
             decoration: InputDecoration(
               hintText: Const.cedula,
               labelText: Const.cedula,
               icon: Icon(Icons.create),
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20.0)
               )

                ),
           ),
           //
        Padding(padding: const EdgeInsets.all(20),),
           TextField(
             decoration: InputDecoration(
               hintText: Const.placa,
               labelText: Const.placa,
               icon: Icon(Icons.create),
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20.0)
               )

                ),
           ),
           //
           Padding(padding: const EdgeInsets.all(20),),
           TextField(
             decoration: InputDecoration(
               hintText: Const.estadop,
               labelText: Const.estadop,
               icon: Icon(Icons.create),
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20.0),
               ),

                ),
           ),
  Padding(
                    padding: EdgeInsets.only(top: 50.0),
                  ),
          ],
        ),
      ),
    ),
  );
}
}