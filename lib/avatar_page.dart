import 'package:flutter/material.dart';


class AvatarPage extends StatelessWidget {

  static final pageName = 'avatar';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[

          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1018943227791982592/URnaMrya.jpg'),
              radius: 25.0,
            ),
          ),

          //Circulo con el nombre
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('Cr'),
              backgroundColor: Colors.green,
            ),
          )
        ],
      ),


      body: Center(
        child: FadeInImage(

          image: NetworkImage('https://blog.mystart.com/wp-content/uploads/MyGerman_Pinscher_5ecfe7b0e8c603715d036e0b-10.jpeg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration( milliseconds: 200 ),
        ),
      ),
    );

  }
}

