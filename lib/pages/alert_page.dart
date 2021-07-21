import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      // Cabecera
      appBar: AppBar(
        title: Text('Alert Page'),
      ),

      //Cuerpo
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, //Centrar el boton
          children: <Widget>[
            ElevatedButton(
              //Estilo del boton tamano y color
              style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  onPrimary: Colors.yellow ,
                  textStyle: TextStyle(fontSize: 50)),
              onPressed: () => _mostrarAlert(context),
              child: const Text('Enabled'),
            ),

            //Margen en caso de haber otro boton
            // const SizedBox(height: 30),


          ],
        ),
      ),

    );
  }


  void _mostrarAlert(BuildContext context) {

    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {

          return AlertDialog(
            shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0) ),
            title: Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min, //Adaptarse al contenido interno
              children: <Widget>[
                Text('Este es el contenido de la caja de la alerta'),
                FlutterLogo( size: 100.0 )
              ],
            ),
            actions: <Widget>[

              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.black87, //Color del texto
                  textStyle: const TextStyle(),
                ),
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Cancelar'),
              ),

              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.black, //Color del texto
                  textStyle: const TextStyle(fontSize: 15),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Ok'),
              ),

            ],
          );
        }
    );
  }
}