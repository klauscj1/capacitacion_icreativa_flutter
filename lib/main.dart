import 'package:clase_2/bloc/provider.dart';
import 'package:clase_2/ui/pages/menu_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Clase 2',
        home: MenuPage(),
      ),
    );
  }
}
