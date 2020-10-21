import 'package:clase_2/ui/pages/con_estado.dart';
import 'package:clase_2/ui/pages/menu_page.dart';
import 'package:clase_2/ui/pages/sin_estado.dart';
import 'package:flutter/material.dart';
import 'package:clase_2/ui/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clase 2',
      home: MenuPage(),
    );
  }
}
