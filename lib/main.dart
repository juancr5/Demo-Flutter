import 'pages/home_temp.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List View',
      debugShowCheckedModeBanner: false, //Quitar el logo de debug en la esquina superior

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: HomePageTemp()
    );
  }
}
