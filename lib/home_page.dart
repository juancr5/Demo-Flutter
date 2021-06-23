import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  // Variable de diseño
  final estiloTexto = new TextStyle(fontSize: 25);
  final conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Título'),
        centerTitle: true,
      ),
      // 01. Empieza el codigo
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Número de clicks:', style: estiloTexto),
              Text('$conteo', style: estiloTexto),
            ],
          )
      ),
      // 02. Empieza el codigo del boton del fondo
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(

        child: Icon(Icons.add),
        onPressed: () {
          print('Hola Mundo!');
        },
      ),
    );
  }
}