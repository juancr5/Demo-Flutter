import 'package:flutter/material.dart';
import 'package:json_file/pages/alert_page.dart';
import 'package:json_file/pages/avatar_page.dart';
import 'package:json_file/pages/home_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/'       : (BuildContext context) => HomePage(),
    'alert'   : (BuildContext context) => AlertPage(),
    'avatar'  : (BuildContext context) => AvatarPage(),
  };
}