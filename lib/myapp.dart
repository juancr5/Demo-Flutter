import 'package:flutter/material.dart';

import 'contador_page.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build( context ) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Contador', //titulo que se muestra en el navegador
      theme: ThemeData(
        primarySwatch: Colors.lightGreen, //Color primario de la aplicacion
      ),
      home: Center(
        // child: HomePage(),
        child: ContadorPage(),
      ),
    );

  }
}