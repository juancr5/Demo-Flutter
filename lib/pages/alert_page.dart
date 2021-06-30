import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),

      //Boton regreso flotante parte inferior
      floatingActionButton: FloatingActionButton( //Boton flotante parte inferior
        child: Icon(Icons.arrow_back_ios_new),
        onPressed: () {
          Navigator.pop(context); //boton para regresar a la pantalla anterior
        },
      ),

    );
  }
}
