import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String titulo;
  final String subtitulo;
  final String leading;
  final Widget pagina;

  MenuItem(
      {@required this.titulo,
      @required this.subtitulo,
      @required this.leading,
      @required this.pagina});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.blue,
          child: ListTile(
            title: Text(
              titulo,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            leading: Text(
              leading,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            trailing: Icon(
              Icons.chevron_right,
              color: Colors.white,
            ),
            subtitle: Text(
              subtitulo,
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => pagina));
            },
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
