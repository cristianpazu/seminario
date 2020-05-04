import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyectorainbox/UI/operadores.dart';
import 'package:proyectorainbox/UI/parquear.dart';
import 'package:proyectorainbox/UI/precio.dart';
import 'package:proyectorainbox/UI/prueba.dart';
import 'package:proyectorainbox/UI/registrope.dart';

import '../main.dart';

class Iniciopage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF151026),
          title: Text(
            'PARQUEDERO SEGURO',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.account_circle, color: Colors.black),
                onPressed: null)
          ],
        ),
        body: Row(
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



          ],
        )
        );
  }
}
