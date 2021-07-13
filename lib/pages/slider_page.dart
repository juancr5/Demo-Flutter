import 'package:flutter/material.dart';


class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100.0;
  bool _bloquearCheck = false; //Variable para bloquear el slider

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(

          children: <Widget>[
            _crearSlider(),
            _checkBox(),
            _crearSwitch(),
            Expanded(
                child: _crearImagen()
            ),
          ],
        ),
      ),
    );
  }

  //01
  Widget _crearSlider() {

    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      // divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      // Decisión bloqeuado o desbloqueado
      onChanged: ( _bloquearCheck ) ? null : ( valor ){

        //print(valor )
        setState(() {
          _valorSlider = valor;
        });

      },
    );

  }

  //CheckBox
  Widget _checkBox() {

    return CheckboxListTile(
      title: Text('Checkbox Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: (valor){
        setState(() {
          _bloquearCheck = valor!;
        });
      },

    );


  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck,
      onChanged: (valor){
        setState(() {
          _bloquearCheck = valor;
        });
      },

    );
  }


  Widget _crearImagen() {

    return Image(
      image: NetworkImage('https://static.wikia.nocookie.net/batman/images/f/f9/Heath_Ledger_as_the_Joker.JPG'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );

  }

}