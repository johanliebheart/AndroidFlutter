import 'package:flutter/material.dart';

class LugaresTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: new Stack(
        children:<Widget> [
          //**Iniciamos imagen */
          new TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Qué pasó pinches perros'
            ),
          ),

          new Container(
            margin: const EdgeInsets.all(30.0), //margenes por todos los lados
            width: 350.0, //ancho
            height: 350.0, //alto
            decoration: new BoxDecoration(
              image: new DecorationImage(image: new AssetImage("assets/images/cat.jpg"),
              fit: BoxFit.cover 
              ),
            ),
          ),
          //agregamos un boton con alguna acción          
        ],
      )
    );
  }
}