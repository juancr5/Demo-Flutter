import 'package:flutter/material.dart';

enum FavoriteMethod { flutter, kotlin, swift, reactNative }

class Radio_list extends StatefulWidget {
  @override
  _Radio_listState createState() => _Radio_listState();
}

class _Radio_listState extends State<Radio_list> {
  FavoriteMethod _method = FavoriteMethod.flutter;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('What do you prefer for App Development?')),
      body: Column(
        children: <Widget>[
          ListTile(
            title: const Text('Flutter'),
            leading: Radio<FavoriteMethod>(
              value: FavoriteMethod.flutter,
              groupValue: _method,
              onChanged: (value) {
                setState(() {
                  _method = value!;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Kotlin'),
            leading: Radio<FavoriteMethod>(
              value: FavoriteMethod.kotlin,
              groupValue: _method,
              onChanged: (value) {
                setState(() {
                  _method = value!;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Swift'),
            leading: Radio<FavoriteMethod>(
              value: FavoriteMethod.swift,
              groupValue: _method,
              onChanged: (value) {
                setState(() {
                  _method = value!;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('React Native'),
            leading: Radio<FavoriteMethod>(
              value: FavoriteMethod.reactNative,
              groupValue: _method,
              onChanged: (value) {
                setState(() {
                  _method = value!;
                });
              },
            ),
          ),

          SizedBox(height: 40),

          ElevatedButton(
            //Estilo del boton tamano y color
            style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
                textStyle: TextStyle(fontSize: 15)),
            onPressed: () {},
            child: const Text('SUBMIT'),
          )

        ],
      ),


      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(10),
        child: ElevatedButton(
          onPressed: () {},
          child: Text('Fixed Button'),
        ),
      ),


    );
  }
}
