import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hola Mundo en Flutter',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(title: 'Hola Mundo'),
    );
  }
}


// ignore: must_be_immutable
class MyHomePage extends StatelessWidget{
  MyHomePage({required this.title});

  String title;

  @override
  Widget build(BuildContext context) {
    //return Text(title);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Text('El contenido de la aplicacion va dentro de este texto'),
      floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
      ),
    );
  }
}
