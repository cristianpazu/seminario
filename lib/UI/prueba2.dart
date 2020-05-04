import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Prueba2 extends StatefulWidget {
const Prueba2({Key key }): super(key: key);


 @override 
  Prueba2State createState()=> Prueba2State();
}

class Prueba2State extends State<Prueba2> {
  String nombre;
  List<String>lista=<String>[
'gg','gg','gh'
  ];
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ff')
      ),
      body: Container(
        child: DropdownButton<String>(
          value: nombre,
          elevation: 23,
          hint: Text('selecciona'),
        onChanged: (String cal){
          setState(() {
            cal=nombre;
          });
        },
        items:lista
           .map<DropdownMenuItem<String>>((String cali){
           return DropdownMenuItem<String>(
            value: cali,
            child: Text(cali),
          );
        }).toList()
        )
      ),
    );
  }
  
}