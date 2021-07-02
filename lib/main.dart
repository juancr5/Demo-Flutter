import 'package:flutter/material.dart';
import 'animated_container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card Widget',
      debugShowCheckedModeBanner: false, //Quitar el logo de debug en la esquina superior

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedContainerPage(),
    );
  }
}
