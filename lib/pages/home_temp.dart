import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  //Lista de Frutas
  final frutasList = ['Pera',
    'Piña', 'Manzana', 'Fresa', 'Uva', 'Papaya', 'Naranja', 'Lulo', 'Kiwi', 'Mandarina', 'Coco', 'Mora', 'Guayaba'
  ];

  //Mapa de Frutas
  Map<String, dynamic> frutasMap = {
    // Key:    Value
    'Frutas' : [
      {"fruta" : "Pera", "color" : "Verde", "tamano": "Pequeña"},
      {"fruta" : "Piña", "color" : "Amarillo", "tamano": "Grande"},
      {"fruta" : "Fresa", "color" : "Rojo", "tamano": "Pequeño"},
      {"fruta" : "Uva", "color" : "Morado", "tamano": "Pequeño"},
      {"fruta" : "Naranja", "color" : "Naranja", "tamano": "Pequeño"},
      {"fruta" : "Lulo", "color" : "Amarillo", "tamano": "Pequeño"},
      {"fruta" : "Papaya", "color" : "Naranja", "tamano": "Grande"},
      {"fruta" : "Guayaba", "color" : "Verde", "tamano": "Pequeño"},
      {"fruta" : "Kiwi", "color" : "Verde", "tamano": "Pequeño"},
      {"fruta" : "Coco", "color" : "Cafe", "tamano": "Grande"}
      ]};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),

      body: ListView(
          children: _crearItemsMapShort()
      ),
    );
  }


  // 01 Devuelve la Lista de Frutas
  List<Widget> _crearItems() {
    final lista = <Widget>[];

    for (var fruta in frutasList) {
      final tempWidget = ListTile(
        title: Text(fruta),
        subtitle:Text('Descripcion')
      );
      lista..add(tempWidget)..add(Divider());
      /*
      Esto es igual a hacer esto:
      lista.add(tempWidget);
      lista.add(Divider());
       */
    }
    return lista;
  }

  // 02 Devuelve una Lista de la lista de Frutas
  // Pagina de Iconos
  // https://fonts.google.com/icons?selected=Material+Icons
  List<Widget> _crearItemsShort() {
    return frutasList.map((item) =>
    ListTile(
          title: Text(item + '!!'),
          subtitle:Text('Descripcion'),
          leading: Icon(Icons.dining_outlined), // Icono Iquierda
          trailing: Icon(Icons.keyboard_arrow_right_sharp), // Icono Derecha
      onTap: (){},
      )
    ).toList();
  }

  //03 Devuelve una lista del Mapa de Frutas
  List<Widget> _crearItemsMap() {
    List<dynamic> nombresFrutas = frutasMap['Frutas'];

    print(nombresFrutas);
    return nombresFrutas.map((fruta) =>
        ListTile(
            title: Text(fruta['fruta']),
            subtitle: Text('El color es: ${fruta['color']}, El tamaño es: ${fruta['tamano']}'),
            leading: FlutterLogo(),
            onTap: () {},
        )
    ).toList();
  }


  //04 Devuelve una lista del Mapa de Frutas
  List<Widget> _crearItemsMapShort() {

    List<Widget> nombresFrutas =  <Widget>[];

    frutasMap['Frutas'].forEach((fruta) {

      final widgetTemp = ListTile(
        title: Text(fruta['fruta']),
        subtitle: Text('El color es: ${fruta['color']}, El tamaño es: ${fruta['tamano']}'),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {},
      );
      nombresFrutas..add(widgetTemp)
        ..add(Divider());
    });

    return nombresFrutas;
  }

}

