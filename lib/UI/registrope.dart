import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyectorainbox/bloc/personbloc.dart';
import 'package:proyectorainbox/const/Constants.dart';
import 'package:proyectorainbox/model/regitro.dart';


class Registropage extends StatefulWidget {
  Registropage({Key key}) : super (key: key);

@override
RegistropageState createState()=> RegistropageState();
}

class RegistropageState extends State<Registropage> 
    with SingleTickerProviderStateMixin{
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
   ProductBloc productBloc;
   Product _product = Product(nombre: '', apellido: '', cedula: 0, placa: '');
 
 
 @override
  void initState() {
    super.initState();
    productBloc = ProductBloc();
  }

  void showInSnackBar(String value) {
    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text(value),
    ));
  }

  bool _autovalidate = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _handleSubmitted() {
    final FormState form = _formKey.currentState;
    if (!form.validate()) {
      _autovalidate = true;
    } else {
      form.save();
      productBloc.createProduct(_product);
      //TecniNavigator.goToHomeI(context);
    }
   
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Registro de personas')),
      body: SingleChildScrollView(
          
        child: Center(
          child:Form(
          key: _formKey,
                autovalidate: _autovalidate,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20),
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: Consts.nombre,
                    labelText: Consts.nombre,
                    icon: Icon(Icons.people),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
              onChanged: (valor) {
                      _product.nombre = valor;
  }
  ),
              //
              Padding(
                padding: const EdgeInsets.all(20),
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: Consts.apellido,
                    labelText: Consts.apellido,
                    icon: Icon(Icons.person_add),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
                         onChanged: (valor) {
                      _product.apellido = valor;
                         }
              ),
              //
              Padding(
                padding: const EdgeInsets.all(20),
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: Consts.cedula,
                    labelText: Consts.cedula,
                    icon: Icon(Icons.person_outline),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
                         onChanged: (valor) {
                      _product.cedula = int.parse(valor);}
              ),
              //
              Padding(
                padding: const EdgeInsets.all(20),
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: Consts.placa,
                    labelText: Consts.placa,
                    icon: Icon(Icons.explore),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
             onChanged: (valor) {
                      _product.placa = valor;
             }
              ),
              //

              Padding(
                padding: EdgeInsets.only(top: 50.0),
              ),
               RaisedButton(
                      padding: new EdgeInsets.fromLTRB(40, 0, 40, 0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child: Text('Registrar'),
                      textColor: Colors.black87,
                      color: Colors.green[500],
                      onPressed: _handleSubmitted),
            ],
          ),
        ),
        )
      ),

    );
  }
    
}
