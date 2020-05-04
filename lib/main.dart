import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyectorainbox/UI/registrope.dart';

import 'UI/homepage.dart';
import 'UI/listarproducto.dart';
import 'UI/prueba.dart';
import 'UI/prueba2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            home: Myhomepage(),
    );
  }
}

class Myhomepage extends StatefulWidget{
  @override
  MyhomepageState createState()=>MyhomepageState();
}

class MyhomepageState extends State<Myhomepage> {
   @override
  void initState() { 
    super.initState();
    Future.delayed(Duration(seconds: 5)).then((value){
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>ListaProducto()));
    });
    
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         child: Column(
         
           
          children: <Widget>[
           Expanded(
             child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/pp.jpg'), 
            ),
            Text('Tu parqueadero seguro',
            style: GoogleFonts.aclonica(
              textStyle: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.orange)),
            
            )
          ],
          )),
                Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
          child: Center(
            child: CircularProgressIndicator(),)
          )
          ]
          )
          ),

    );
  }
  
}

