import 'package:flutter/material.dart';

class ConEstado extends StatefulWidget {
  @override
  _ConEstadoState createState() => _ConEstadoState();
}

class _ConEstadoState extends State<ConEstado> {
  int contador = 0;

  @override
  Widget build(Object context) {
    print('Vuelve a redibujar todo el widget');
    return Scaffold(
      appBar: AppBar(
        title: Text('Windget con estado'),
      ),
      body: Center(
        child: Column(
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
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'tag1',
            onPressed: () {
              contador = 0;
              setState(() {});
              //print('el contador ahora es: $contador');
            },
            child: Icon(Icons.delete),
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            heroTag: 'tag2',
            onPressed: () {
              contador = contador - 1;
              setState(() {});
              //print('el contador ahora es: $contador');
            },
            child: Icon(Icons.remove),
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            heroTag: 'tag3',
            onPressed: () {
              contador = contador + 1;
              setState(() {});
              //print('el contador ahora es: $contador');
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
