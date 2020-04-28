import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyectorainbox/const/const.dart';

class Parquepage extends StatefulWidget {
  Parquepage({Key key}) : super(key: key);

  @override
  ParquepageState createState() => ParquepageState();
}

class ParquepageState extends State<Parquepage> {
  String nn;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Registro de personas')),
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
              items: <String>['One', '4horsa-5000', 'tree', 'tt']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          TextField(
                decoration: InputDecoration(
                    hintText: Const.horas,
                    icon: Icon(Icons.create),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
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

