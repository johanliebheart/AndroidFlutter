import 'package:flutter/material.dart';
import 'package:miprimeraapp/tabs/acercade_tabs.dart';
import 'package:miprimeraapp/tabs/inicio_tabs.dart';
import 'package:miprimeraapp/tabs/lugares_tabs.dart';
import 'package:miprimeraapp/tabs/registro_tabs.dart';

void main()=> runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    final TabController = new DefaultTabController(
      length: 4, //numero de iconos de la barra
      child: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.grey[900],
          title: new Text('Navegacion por tabs'),
          bottom: new TabBar(indicatorColor: Colors.red, tabs: <Widget>[
            new Tab(icon: new Icon(Icons.home), text: "Inicio",),
            new Tab(icon: new Icon(Icons.contacts), text: "Registro",),
            new Tab(icon: new Icon(Icons.place), text: "Lugares",),
            new Tab(icon: new Icon(Icons.info), text: "Acerca de",)
          ]),
        ),

        body: new TabBarView(
          children: <Widget>[
            new InicioTabs(),
            new RegistroTabs(),
            new LugaresTabs(),
            new AcercadeTabs(),
          ],
        )
  )
  );

  return new MaterialApp(
    title: 'Tabs con Flutter',
    theme: new ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: TabController,
  );
   
  }
}