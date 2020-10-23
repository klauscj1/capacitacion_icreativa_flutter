import 'package:clase_2/ui/pages/lista_page.dart';
import 'package:flutter/material.dart';

class LibroItem extends StatelessWidget {
  final Libro libro;

  LibroItem({@required this.libro});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        libro.titulo,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Tipo: ${libro.tipo}',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          Text(
            'Editorial: ${libro.editorial}',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ],
      ),
      trailing: Text(
        '\$ ${libro.precio.toStringAsFixed(2)}',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
      ),
      onTap: () {
        print('Dio click en el libro: ${libro.titulo}');
      },
    );
  }
}
