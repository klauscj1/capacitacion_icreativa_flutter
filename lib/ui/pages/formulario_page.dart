import 'package:clase_2/ui/pages/formulario_edisson.dart';
import 'package:clase_2/ui/pages/calculadora_jorge.dart';
import 'package:clase_2/ui/pages/formulario_lina.dart';
import 'package:clase_2/ui/pages/formulario_claus.dart';
import 'package:clase_2/ui/widgets/menu_item_widget.dart';
import 'package:clase_2/ui/pages/formulario_Gabriel.dart';
import 'package:flutter/material.dart';

class FormulariosPage extends StatelessWidget {
  const FormulariosPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formularios'),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 12, left: 10, right: 10, bottom: 20),
        child: ListView(
          children: [
            MenuItem(
              pagina: FormularioLina(),
              leading: 'FL',
              titulo: 'Lina Orellana',
              subtitulo: 'Lina Orellana',
            ),
            MenuItem(
              pagina: FormularioGabriel(),
              leading: 'FG',
              titulo: 'Formulario Gabriel',
              subtitulo: 'Gabriel Cuenca',
            ),
            MenuItem(
              pagina: FormularioEdisson(),
              leading: 'EV',
              titulo: 'Edisson Vargas',
              subtitulo: 'Edisson Vargas',
            ),
            MenuItem(
              pagina: CalculadoraJorge(),
              leading: 'JA',
              titulo: 'Jorge Arevalo',
              subtitulo: 'Jorge Arevalo',
            ),
            MenuItem(
              pagina: FormularioClaus(),
              leading: 'FC',
              titulo: 'Claus',
              subtitulo: 'Claus',
            ),
          ],
        ),
      ),
    );
  }
}
