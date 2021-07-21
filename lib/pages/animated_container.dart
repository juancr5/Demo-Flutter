import 'package:flutter/material.dart';
import 'dart:math';


//Stateful widget con su manejador de estado
class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {

  //Propiedades
  double _width  = 50.0; //pixeles
  double _height = 50.0; //pixeles
  Color  _color  = Colors.pink;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //Cabecera
      appBar: AppBar(
        title: Text('Animated Container'),
      ),

      //Cuerpo
      body: Center(
        //Caja decorativa con valores asignados
          child: AnimatedContainer(
            duration: Duration( seconds: 1 ),
            curve: Curves.fastOutSlowIn, //Tipo de animacion
            width: _width,
            height: _height,
            decoration: BoxDecoration(
                borderRadius: _borderRadius,
                color: _color
            ),
          )
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.play_arrow ),
        onPressed: _cambiarForma,
      ),

    );
  }

  void _cambiarForma() {

    final random = Random();

    setState(() {

      //Funcion para generar numeros random hasta 300
      _width  = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      // Random de color
      _color  = Color.fromRGBO(
          random.nextInt(255),
          random.nextInt(255),
          random.nextInt(255),
          1);

      _borderRadius = BorderRadius.circular( random.nextInt(100).toDouble() );

    });

  }

}