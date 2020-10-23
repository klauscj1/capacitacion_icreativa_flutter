import 'package:clase_2/ui/widgets/libro_item_widget.dart';
import 'package:flutter/material.dart';

class ListaPage extends StatelessWidget {
  final List<Libro> libros = [
    new Libro(
      titulo: 'If I stay',
      tipo: 'Drama',
      editorial: 'Unknow',
      precio: 25.50,
    ),
    new Libro(
      titulo: 'El señor de los anillos',
      tipo: 'Trama',
      editorial: 'Unknow',
      precio: 15.50,
    ),
    new Libro(
      titulo: 'Bajo la misma estrella',
      tipo: 'Drama',
      editorial: 'Unknow',
      precio: 10.00,
    ),
    new Libro(
      titulo: 'Advengers End Game',
      tipo: 'Accion',
      editorial: 'Unknow',
      precio: 11.50,
    ),
    new Libro(
      titulo: 'If I stay',
      tipo: 'Drama',
      editorial: 'Unknow',
      precio: 25.50,
    ),
    new Libro(
      titulo: 'El señor de los anillos',
      tipo: 'Trama',
      editorial: 'Unknow',
      precio: 15.50,
    ),
    new Libro(
      titulo: 'Bajo la misma estrella',
      tipo: 'Drama',
      editorial: 'Unknow',
      precio: 10.00,
    ),
    new Libro(
      titulo: 'Advengers End Game',
      tipo: 'Accion',
      editorial: 'Unknow',
      precio: 11.50,
    ),
    new Libro(
      titulo: 'If I stay',
      tipo: 'Drama',
      editorial: 'Unknow',
      precio: 25.50,
    ),
    new Libro(
      titulo: 'El señor de los anillos',
      tipo: 'Trama',
      editorial: 'Unknow',
      precio: 15.50,
    ),
    new Libro(
      titulo: 'Bajo la misma estrella',
      tipo: 'Drama',
      editorial: 'Unknow',
      precio: 10.00,
    ),
    new Libro(
      titulo: 'Advengers End Game',
      tipo: 'Accion',
      editorial: 'Unknow',
      precio: 11.50,
    ),
    new Libro(
      titulo: 'If I stay',
      tipo: 'Drama',
      editorial: 'Unknow',
      precio: 25.50,
    ),
    new Libro(
      titulo: 'El señor de los anillos',
      tipo: 'Trama',
      editorial: 'Unknow',
      precio: 15.50,
    ),
    new Libro(
      titulo: 'Bajo la misma estrella',
      tipo: 'Drama',
      editorial: 'Unknow',
      precio: 10.00,
    ),
    new Libro(
      titulo: 'Advengers End Game',
      tipo: 'Accion',
      editorial: 'Unknow',
      precio: 11.50,
    ),
    new Libro(
      titulo: 'If I stay',
      tipo: 'Drama',
      editorial: 'Unknow',
      precio: 25.50,
    ),
    new Libro(
      titulo: 'El señor de los anillos',
      tipo: 'Trama',
      editorial: 'Unknow',
      precio: 15.50,
    ),
    new Libro(
      titulo: 'Bajo la misma estrella',
      tipo: 'Drama',
      editorial: 'Unknow',
      precio: 10.00,
    ),
    new Libro(
      titulo: 'Advengers End Game',
      tipo: 'Accion',
      editorial: 'Unknow',
      precio: 11.50,
    ),
  ];
  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista page'),
      ),
      body: _cuerpo2(context),
    );
  }

  Widget _cuerpo(BuildContext context) {
    return ListView(
      children: [
        Text('Item 1'),
        Text('Item 2'),
        Text('Item 3'),
        Text('Item 4'),
        Text('Item 5'),
      ],
    );
  }

  Widget _cuerpo2(BuildContext context) {
    return ListView.builder(
      itemCount: libros.length,
      itemBuilder: (context, index) {
        Libro libro = libros[index];
        return LibroItem(libro: libro);
      },
    );
  }
}

class Libro {
  String titulo;
  String tipo;
  double precio;
  String editorial;
  Libro({this.titulo, this.tipo, this.precio, this.editorial});
}
