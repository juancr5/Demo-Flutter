import 'package:flutter/material.dart';
import 'package:json_file/pages/alert_page.dart';
import 'package:json_file/pages/animated_container.dart';
import 'package:json_file/pages/avatar_page.dart';
import 'package:json_file/pages/card_page.dart';
import 'package:json_file/pages/form_validation.dart';
import 'package:json_file/pages/home_page.dart';
import 'package:json_file/pages/input_page.dart';
import 'package:json_file/pages/list_page.dart';
import 'package:json_file/pages/slider_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/'                 : (BuildContext context) => HomePage(),
    'alert'             : (BuildContext context) => AlertPage(),
    'avatar'            : (BuildContext context) => AvatarPage(),
    'card'              : (BuildContext context) => CardPage(),
    'animatedContainer' : (BuildContext context) => AnimatedContainerPage(),
    'inputs'            : (BuildContext context) => InputPage(),
    'slider'            : (BuildContext context) => SliderPage(),
    'list'              : (BuildContext context) => ListPage(),
    'formValidation'    : (BuildContext context) => FormValidation(),

  };
}