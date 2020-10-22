import 'dart:math';

import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  @override
  _ContainerPageState createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  double ancho = 320;
  double alto = 450;
  Color color = Colors.amber;

  List<Color> colores = [
    Colors.green,
    Colors.red,
    Colors.blue,
    Colors.amber,
    Colors.black,
    Colors.brown,
    Colors.orange
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget container'),
      ),
      body: cuerpo(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Random random = new Random();
          ancho = random.nextInt(320) + 20.0;
          alto = random.nextInt(450) + 20.0;
          color = colores[random.nextInt(6) + 0];
          setState(() {});
          print('Aumentar');
        },
        child: Icon(Icons.zoom_in),
      ),
    );
  }

  Widget cuerpo(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
        ),
        width: ancho,
        height: alto,
      ),
    );
  }
}
