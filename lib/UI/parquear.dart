import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyectorainbox/bloc/parquearbloc.dart';
import 'package:proyectorainbox/bloc/personbloc.dart';
import 'package:proyectorainbox/model/parquear.dart';
import 'package:proyectorainbox/model/regitro.dart';


class Parquepage extends StatefulWidget {
  Parquepage({Key key}) : super(key: key);

  @override
  ParquepageState createState() => ParquepageState();
}

class ParquepageState extends State<Parquepage> with SingleTickerProviderStateMixin {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final ParquearBloc parquearBloc = ParquearBloc();
  Parquear _parquear = Parquear(estado: "", persona: Product( id: 0, nombre: "", apellido: "", cedula: 0, placa: ""));

  final ProductBloc personarBloc = ProductBloc();
  List<Product> listaPersona = List();
  int currentPersona;

  @override
  void initState() {
    ProductBloc();
    personarBloc.listarProducto().then((apiResponse) {
      setState(() {
        listaPersona = apiResponse.listProducto;
      });
    });
    super.initState();
    ParquearBloc();
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
      parquearBloc.createParquear(_parquear);
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
                          hintText: "Estado",
                          labelText: "Estado",
                          icon: Icon(Icons.save),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0))),
                      onChanged: (valor) {
                        _parquear.estado = valor;
                      }
                  ),
                  //
                  Padding(
                    padding: const EdgeInsets.all(20),
                  ),
                  DropdownButtonHideUnderline(
                    child: DropdownButton<int>(
                      hint: Text("Seleccionar"),
                      value: currentPersona,
                      isDense: true,
                      onChanged: (int newValue) {
                        currentPersona = newValue;
                        setState(() {
                          currentPersona = newValue;
                        });
                        print(currentPersona);
                        _parquear.persona.id = newValue;
                      },
                      items: listaPersona.map((Product map) {
                        return DropdownMenuItem<int>(
                          value: map.id,
                          child: Text(map.nombre,
                              style: TextStyle(color: Colors.black)),
                        );
                      }).toList(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                  ),
                  //
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

