import 'package:flutter/material.dart';
import 'package:sliders_widget/slider_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slider Widget',
      debugShowCheckedModeBanner: false, //Quitar el logo de debug en la esquina superior

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SliderPage(),
    );
  }
}
