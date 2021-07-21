import 'package:flutter/material.dart';

class DefaultPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //return Text(title);
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina Por Defecto'),
        centerTitle: true,
      ),
      body: Center(
          child: Text('ERROR 404',
              style: TextStyle(fontSize: 40, color: Colors.blue))
      ),

      //Boton regreso flotante parte inferior
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios_new),
        onPressed: () {
          Navigator.pop(context); //boton para regresar a la pantalla anterior
        },
      ),

    );
  }
}