//rootBundle me permite abrir el Json
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

/*
La decodificación JSON manual se refiere al uso del decodificador JSON incorporado en dart:convert.
Implica pasar la cadena JSON sin procesar a la jsonDecode() función y luego buscar los valores que
necesita en el archivo Map<String, dynamic>.
 */

//Clase que hace el manejo al archivo Json
final menuProvider = new _MenuProvider();

class _MenuProvider {
  List<dynamic> opciones = []; //Lista Vacia

  _MenuProvider() { //Constructor
    //cargarData();
  }

  /*
  El cargarData debe esperar antes de que el await responda antes de finalizar el constructor
   */
  Future<List<dynamic>>cargarData() async  {

  final resp = await rootBundle.loadString('data/menu_opts.json');
      //.then((data) => print(data)); //Imprimir la informacion del Json atraves del future

  Map dataMap = json.decode(resp); //Convierte el Json en un String
  opciones = dataMap['rutas'];

  return opciones;
  }

}