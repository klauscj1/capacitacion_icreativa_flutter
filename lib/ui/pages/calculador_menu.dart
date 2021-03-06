import 'package:clase_2/ui/pages/calculadora_Edi.dart';
import 'package:clase_2/ui/pages/calculadora_gabriel.dart';
import 'package:clase_2/ui/pages/calculadora_jorge.dart';
import 'package:clase_2/ui/pages/calculadora_lina.dart';
import 'package:clase_2/ui/widgets/menu_item_widget.dart';
import 'package:flutter/material.dart';

import 'calculadora_claus.dart';

class CalculadoraMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadoras'),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 12, left: 10, right: 10, bottom: 20),
        child: ListView(
          children: [
            MenuItem(
              pagina: CalculadoraLina(),
              leading: 'LO',
              titulo: 'Lina Orellana',
              subtitulo: 'Lina Orellana',
            ),
            MenuItem(
              pagina: CalculadoraGabriel(),
              leading: 'GC',
              titulo: 'Gabriel Cuenca',
              subtitulo: 'Gabriel Cuenca',
            ),
            MenuItem(
              pagina: CalculadoraEdison(),
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
              pagina: CalculadorClaus(),
              leading: 'JA',
              titulo: 'Claus Chocho',
              subtitulo: 'Claus Chocho',
            ),
          ],
        ),
      ),
    );
  }
}
