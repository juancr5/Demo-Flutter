import 'package:flutter/material.dart';
import 'package:radio_list/form_validation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form validation',
      debugShowCheckedModeBanner: false, //Quitar el logo de debug en la esquina superior

      //Tema de la Aplicacion
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FormValidation(),
    );
  }
}
