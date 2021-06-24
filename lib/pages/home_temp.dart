import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),

      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Pera'),
          ),
          Divider(), //Separador
          ListTile(
            title: Text('Piña'),
          ),
          Divider(),
          ListTile(
            title: Text('Manzana'),
          ),
          Divider(),
          ListTile(
            title: Text('Fresa'),
          ),
          Divider(),
        ],
      ),
    );
  }
}
