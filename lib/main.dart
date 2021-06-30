import 'package:json_file/pages/default_page.dart';
import 'package:json_file/routes/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Componentes APP',
        debugShowCheckedModeBanner: false, //Quitar el logo de debug en la esquina superior

        //Tema de la Aplicacion
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),

        //home: HomePage()

        initialRoute: '/',
        //Importar las rutas de la aplicacion desde routes/routes.dart
        routes: getApplicationRoutes(),

        //Cualquier pagina que no este dentro del archivo rutas cargara
        onGenerateRoute: (RouteSettings settings) {
          print('Ruta Llamada: ${settings.name}');
          return MaterialPageRoute(
              builder: ( BuildContext context ) => DefaultPage()
          );
        },

    );
  }
}
