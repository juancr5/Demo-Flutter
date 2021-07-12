import 'package:flutter/material.dart';
import 'package:sliders_widget/lista_page.dart';
import 'package:sliders_widget/lista_page_complete.dart';

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
      home: ListaPage(),
      //home: ListaPageComplete(),
    );
  }
}
