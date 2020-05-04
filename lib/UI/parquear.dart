import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Parquepage extends StatefulWidget {
  Parquepage({Key key}) : super(key: key);

  @override
  ParquepageState createState() => ParquepageState();
}

class ParquepageState extends State<Parquepage> {
  String nn;
  String hh;
  String placa;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Registro de Vehiculos')),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20),
              ),
           DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              hint: Text('Nombre'),
              value: nn,
              icon: Icon(Icons.arrow_downward),
              elevation: 16,
              onChanged: (String newValue) {
                setState(() {
                  nn = newValue;
                });
              },
              items: <String>[
                'Carlos', 
                'Bradd', 
                'Angelina', 
                'Rambo'
                ]
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
           Divider(),
          Container(
            child:DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              hint: Text('Tarifa'),
              value: hh,
              icon: Icon(Icons.arrow_downward),
              elevation: 16,
              onChanged: (String newValue) {
                setState(() {
                  hh = newValue;
                });
              },
              items: <String>['1h-2500', 
              '2h-5000', 
              '3h-7500', 
              '4h-a-5h-12500',
              '6h-a-85h-15000',
              '8-a-12h-22000',
              ]
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          //
          ),
          Divider(),
          Container(
            child:DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              hint: Text('Placa'),
              value: placa,
              icon: Icon(Icons.arrow_downward),
              elevation: 16,
              onChanged: (String newValue) {
                setState(() {
                  placa = newValue;
                });
              },
              items: <String>[
              '4fjkl', 
              '35ghdd', 
              '35ghd'
             
              ]
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          //
          ),
            //
              Padding(
                padding: const EdgeInsets.all(20),
              ),
              
              //
              Padding(
                padding: const EdgeInsets.all(20),
              ),
          

            ],
        ),
        ),
      ),
    );
  }
}

