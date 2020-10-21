import 'package:flutter/material.dart';

class SinEstado extends StatelessWidget {
  int contador = 0;
  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Windget sin estado'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '$contador',
            style: TextStyle(fontSize: 60),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          contador = contador + 1;
          print('el contador ahora es: $contador');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
