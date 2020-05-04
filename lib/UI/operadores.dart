import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'dart:io';


class Operadorepage extends StatefulWidget{
  @override
  _OperadorepageState createState()=> _OperadorepageState();
}

class _OperadorepageState extends State<Operadorepage>{
  File sampleImage;
  final formKey = GlobalKey<FormState>();
  
  @override
 build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('cargando imagen'),
       centerTitle: true,
    ),
    body: Center(
      child: sampleImage == null
      ? Text('selecciona tu imagen')
      : enableUpload(),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: getImage,
      tooltip: "añadir imagen",
      child: Icon(Icons.add),),
   );
 }
 Future getImage() async{
  var tempImage =  
  await ImagePicker.pickImage(source: ImageSource.gallery);
  setState((){
   sampleImage = tempImage;

  });

}



Widget enableUpload(){
  return Container(
    child: Form(
      key: formKey,
      child: Column(
        children: <Widget>[
          Image.file(
            sampleImage,
            height: 300.0,
            width: 600.0,
          
          ),
          
        ],
      ),),

  );

}
}