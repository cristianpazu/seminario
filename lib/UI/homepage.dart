import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
          Container(
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
            color: Colors.green[100],
           
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Heed not the rabble'),
            color: Colors.green[200],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            //child: const Text('Sound of screams but the'),
            color: Colors.green[300],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Who scream'),
            color: Colors.green[400],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Revolution is coming...'),
            color: Colors.green[500],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Revolution, they...'),
            color: Colors.green[600],
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
