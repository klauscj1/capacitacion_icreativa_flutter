import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hola icreativa Lab'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.chevron_left),
      ),
      body: Column(
        children: [
          Text('Titulo 1'),
          Text('Titulo 2'),
          Text('Titulo 3'),
          Text('Titulo 4'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Titulo 5'),
              Text('Titulo 5.1'),
              Text('Titulo 5.2'),
              Text('Titulo 5.3'),
            ],
          ),
          Text('Titulo 6'),
          Text('Titulo 7'),
          Text('Titulo 8'),
          Icon(Icons.card_travel),
          IconButton(
              icon: Icon(Icons.card_membership),
              onPressed: () {
                print('dio click en el icono de card_membership');
              }),
        ],
      ),
    );
  }
}
