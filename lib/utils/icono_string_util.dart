import "package:flutter/material.dart";

// Pagina de Iconos
// https://fonts.google.com/icons?selected=Material+Icons
final _icons = <String, IconData>{

  'add_alert'     : Icons.add_alert,
  'accessibility' : Icons.accessibility,
  'folder_open'   : Icons.folder_open,
  'donut_large'   : Icons.donut_large,
  'input'         : Icons.input,
  'tune'          : Icons.tune,
  'list'          : Icons.list,
  'list_alt'      : Icons.list_alt,
  'report_problem': Icons.report_problem,

};

Icon getIcon(String nombreIcono) {

  return Icon(_icons[nombreIcono], color: Colors.blue);

}