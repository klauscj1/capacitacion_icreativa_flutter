import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          child: Text('Hola mundo 2...'),
        ),
      ),
    );
  }
}
