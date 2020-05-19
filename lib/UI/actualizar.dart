import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyectorainbox/Const/Constants.dart';
import 'package:proyectorainbox/bloc/personbloc.dart';
import 'package:proyectorainbox/model/regitro.dart';

class ActualizarPersona extends StatefulWidget {
  final Product product;
  const ActualizarPersona({this.product, Key key}) : super(key: key);

  @override
  ActualizarPersonaState createState() =>
      ActualizarPersonaState(product: product);
}

class ActualizarPersonaState extends State<ActualizarPersona>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  ActualizarPersonaState({this.product});
  ProductBloc productBloc;

  Product product = Product();

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
      productBloc.updateProduct(product);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text(
            'Actualizar datos',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          )),
      body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(30, 40, 30, 30),
          child: Center(
            child: Form(
              key: _formKey,
              autovalidate: _autovalidate,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    initialValue: product.nombre,
                      decoration: InputDecoration(
                          //hintText: Consts.nombre,
                          labelText: Consts.nombre,
                          icon: Icon(Icons.person_pin),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0))),
                      onChanged: (valor) {
                        product.nombre = valor;
                      }),
                  //
                  Padding(
                    padding: const EdgeInsets.all(20),
                  ),
                  TextFormField(
                    initialValue: product.apellido,
                      decoration: InputDecoration(
                          //hintText: Consts.apellido,
                          labelText: Consts.apellido,
                          icon: Icon(Icons.person_pin),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0))),
                      onChanged: (valor) {
                        product.apellido = valor;
                      }),
                  //
                  Padding(
                    padding: const EdgeInsets.all(20),
                  ),
                  TextFormField(
                    initialValue: product.cedula.toString(),
                      decoration: InputDecoration(
                          //hintText: Consts.cedula,
                          labelText: Consts.cedula,
                          icon: Icon(Icons.recent_actors),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0))),
                      onChanged: (valor) {
                        product.cedula = int.parse(valor);
                      }),
                  //
                  Padding(
                    padding: const EdgeInsets.all(20),
                  ),
                  TextFormField(
                    initialValue: product.placa,
                      decoration: InputDecoration(
                          //hintText: Consts.placa,
                          labelText: Consts.placa,
                          icon: Icon(Icons.directions_car),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0))),
                      onChanged: (valor) {
                        product.placa = valor;
                      }),
                  //

                  Padding(
                    padding: EdgeInsets.only(top: 50.0),
                  ),
                  RaisedButton(
                      padding: new EdgeInsets.fromLTRB(40, 0, 40, 0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child: Text('Actualizar'),
                      textColor: Colors.black87,
                      color: Colors.orangeAccent,
                      onPressed: _handleSubmitted),
                ],
              ),
            ),
          )),
    );
  }
}
