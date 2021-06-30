import 'package:flutter/material.dart';
import 'package:json_file/providers/menu_provider.dart';
import 'package:json_file/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [], // Informacion que va a tener por defecto mientras no sea resuelto el future

      // Funcion que recibe por argumento el BuilContext
      builder: ( context, AsyncSnapshot<List<dynamic>> snapshot ) {
        //print(snapshot.data);

          return ListView(
            children: _listaItem(snapshot.data, context),
          );
      },
    );

    //print(menuProvider.opciones);
    /* Este codigo se puede reemplazar por un Future Builder
    menuProvider.cargarData().then( (opciones) {
      print('_lista');
      print(opciones);
    });
    */
  }

  List<Widget> _listaItem( List<dynamic>? data, BuildContext context) {

    final List<Widget> opciones = [];

      data!.forEach((opt) {

        final widgetTemp = ListTile(
          title: Text(opt['texto']),
          leading: getIcon(opt['icon']),
          trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
          onTap: () {

            // Abrir multiples paginas segun la ruta
            Navigator.pushNamed(context, opt['ruta']);

            /* Abrir una pagina individual
            final route = MaterialPageRoute(
              builder: (context) => AlertPage()
          );
          Navigator.push(context, route);
          */

          },
        );
        opciones..add(widgetTemp)
          ..add(Divider());
      });

      return opciones;
    }
}
