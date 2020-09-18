import 'package:flutter/material.dart';

class InicioTabs extends StatelessWidget {
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
              image: new DecorationImage(image: new AssetImage("assets/images/BABY.jpg"),
              fit: BoxFit.cover 
              ),
            ),
          ),
          //agregamos un boton con alguna acción
          new Container(
            margin: const EdgeInsets.only(top: 500.0, left: 25.0),
            child: new RaisedButton(
              padding: const EdgeInsets.only(top: 40, left: 100, right: 100, bottom: 20),
              textColor: Colors.white,
              color: Colors.blue,
              onPressed: (){//click del botón cuando lo presionamos
                Scaffold
                .of(context)
                .showSnackBar(SnackBar(content: Text('Hola mundo'),));
              },
              child: new Text("Presiona aquí"),
            ),
          ),
        ],
      )
    );
  }
}