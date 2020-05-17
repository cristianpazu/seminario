import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyectorainbox/UI/listaParqueos.dart';
import 'package:proyectorainbox/UI/listarproducto.dart';
import 'package:proyectorainbox/UI/operadores.dart';
import 'package:proyectorainbox/UI/parquear.dart';
import 'package:proyectorainbox/UI/precio.dart';
import 'package:proyectorainbox/UI/prueba.dart';
import 'package:proyectorainbox/UI/registrope.dart';

import '../main.dart';

class Iniciopage extends StatefulWidget {
  Iniciopage({Key key}): super(key :key);
  @override
  IniciopageState createState()=> IniciopageState();
}

class IniciopageState extends State<Iniciopage> {
  

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
          InkWell(
          child:Container(
            padding: const EdgeInsets.all(8),
            
            child:Container(
              child: Column(
                children: <Widget>[
                  
                  Icon(Icons.account_circle,
                 
                  ),
                  
                  const Text('Registro'),
                  
                  
                ],
                
              ),

            ),
            
             //const Text('He\'d have you all unravel at the'),
            color: Colors.orange[100],
            ),
            onTap: () => {
                      Navigator.of(context).push(CupertinoPageRoute(
                          builder: (BuildContext context) => Registropage())),
                    },
          ),
          InkWell(
         child: Container(
           child: Column(
             children: <Widget>[
               //Icon(Icons.report_problem),
               Icon(Icons.people),
              const Text('Ver Personas registradas'),
             ],
           ),
           
            padding: const EdgeInsets.all(8),
            
            color: Colors.orange[200],
            
          ),
          onTap: () => {
                      Navigator.of(context).push(CupertinoPageRoute(
                          builder: (BuildContext context) => ListaProducto())),
                    },
          ),
          InkWell(
         child: Container(
              child: Column(
             children: <Widget>[
               //Icon(Icons.report_problem),
               Icon(Icons.view_headline),
              const Text('Parquear Vehiculo...'),
             ],
           ),
            padding: const EdgeInsets.all(8),
         
          color: Colors.orange[200],
          ),
           onTap: () => {
                      Navigator.of(context).push(CupertinoPageRoute(
                          builder: (BuildContext context) => Parquepage())),
                    },
          ),
          InkWell(
          child:Container(
            child: Column(
             children: <Widget>[
               //Icon(Icons.report_problem),
               Icon(Icons.report_problem),
              const Text('ver vehiculos parquedos'),
             ],
           ),
            padding: const EdgeInsets.all(8),
            
            color: Colors.red[400],
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



          ],
        )
        );
  }
}*/
