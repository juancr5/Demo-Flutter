import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cards')
        ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo3(),
          SizedBox(height: 30.0),
          _cardTipo4(),
          SizedBox(height: 30.0),
          _cardTipo5()


        ],
      ),
    );

  }
  Widget _cardTipo1() {

    return Card(
      elevation: 10.0, //Sombra de la carta
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)), // Borde de la tarjeta
      child:Column(
        children: <Widget>[
          ListTile(
            title: const Text('Titulo de la tarjeta'),
            subtitle: const Text('Subtitulo de la tarjeta, aca se puede poner una descripcion larga de la tarjeta'),
            leading: Icon (Icons.photo_album_outlined, color: Colors.blue),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[

              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.red, //Color del texto
                  textStyle: const TextStyle(),
                ),
                onPressed: () {},
                child: const Text('Cancelar'),
              ),

              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.black, //Color del texto
                  textStyle: const TextStyle(fontSize: 15),
                ),
                onPressed: () {},
                child: const Text('Ok'),
              ),

            ],
          ),
        ],
      ),
    );

}

  Widget _cardTipo2() {
    return Card(
      elevation: 10.0, //Sombra de la carta
      child: Column(
        children: <Widget>[
          Image(
            image: NetworkImage('https://www.raulferrergarcia.com/wp-content/uploads/2020/11/maxresdefault.jpg'),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child:  Text('Flutter Multitasking')
          ),
        ],
      ),
    );
  }

  Widget _cardTipo3() {

    return Card(
      elevation: 10.0, //Sombra de la carta
      child:Column(
        children: <Widget>[
          ListTile(
            title: const Text('Tarjeta Cuadrada - "Lorem ipsum" '),
            subtitle: const Text('Lorem ipsum es el texto que se usa habitualmente en diseño gráfico en demostraciones de tipografías o de borradores de diseño para probar el diseño visual antes de insertar el texto final'),
            leading: Icon ( Icons.audiotrack, color: Colors.green),
          ),
        ],
      ),
    );
  }

  Widget _cardTipo4() {
    final card = Card(

      child: Column(
          children: <Widget>[
            FadeInImage(
                image: NetworkImage('https://d1csarkz8obe9u.cloudfront.net/posterpreviews/happy-father%27s-day-design-template-1b4ce9f386762a13e7fd7c92199b064f_screen.jpg?ts=1591673494'),
                placeholder: AssetImage('assets/jar-loading.gif'),
                fadeInDuration: Duration(milliseconds: 1000), //4 Segundos
                //height: 500.0, //Tamaño de los pixeles de la imagen
                fit: BoxFit.cover  //indica como la imagen debe ocupar el espacio que tiene

            ),
            Container(
                padding: EdgeInsets.all(10.0),
                child:  Text('Picture From Father Days')
            ),
          ],
        ),
    );

    //Container del paisaje
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0, //Extension
                offset: Offset(2.0, 10.0) //Posicion de la sombre
            )
          ]
      ),
      child: ClipRRect( //Recorta
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }

  Widget _cardTipo5() {
    final card = Card(

      child: Column(
        children: <Widget>[
          FadeInImage(
              image: AssetImage('assets/aurora_boreal.jpg'),
              placeholder: AssetImage('assets/jar-loading.gif'),
              fadeInDuration: Duration(milliseconds: 1000), //4 Segundos
              height: 500.0, //Tamaño de los pixeles de la image
              fit: BoxFit.fill  //indica como la imagen debe ocupar el espacio que tiene

          ),
          Container(
              padding: EdgeInsets.all(10.0),
              child:  Text('Gran Paisaje')
          ),
        ],
      ),
    );

    //Container del paisaje
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black54,
                blurRadius: 10.0,
                spreadRadius: 2.0, //Extension
                offset: Offset(2.0, 10.0) //Posicion de la sombre
            )
          ]
      ),
      child: ClipRRect( //Recorta
        borderRadius: BorderRadius.circular(40.0),
        child: card,
      ),
    );
  }



}


