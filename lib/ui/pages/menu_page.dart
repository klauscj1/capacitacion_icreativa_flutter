import 'package:clase_2/ui/pages/bloc_page.dart';
import 'package:clase_2/ui/pages/calculador_menu.dart';
import 'package:clase_2/ui/pages/con_estado.dart';
import 'package:clase_2/ui/pages/container_page.dart';
import 'package:clase_2/ui/pages/formulario_page.dart';
import 'package:clase_2/ui/pages/home_page.dart';
import 'package:clase_2/ui/pages/list_page.dart';
import 'package:clase_2/ui/pages/lista_page.dart';
import 'package:clase_2/ui/pages/sin_estado.dart';
import 'package:clase_2/ui/pages/textfield_page.dart';
import 'package:clase_2/ui/widgets/menu_item_widget.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu principal'),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 12, left: 10, right: 10, bottom: 20),
        child: ListView(
          children: [
            MenuItem(
              pagina: HomePage(),
              leading: 'HO',
              titulo: 'Home Page',
              subtitulo: 'Primer ejecicio',
            ),
            MenuItem(
              pagina: ListPage(),
              leading: 'LP',
              titulo: 'List Page',
              subtitulo: 'segundo ejecicio',
            ),
            MenuItem(
              pagina: SinEstado(),
              leading: 'WS',
              titulo: 'Widget sin estado',
              subtitulo: 'Tercer ejecicio',
            ),
            MenuItem(
              pagina: ConEstado(),
              leading: 'WC',
              titulo: 'Widget con estado',
              subtitulo: 'cuarto ejecicio',
            ),
            MenuItem(
              pagina: ContainerPage(),
              leading: 'CP',
              titulo: 'Container widget',
              subtitulo: 'quinto ejecicio',
            ),
            MenuItem(
              pagina: ListaPage(),
              leading: 'LP',
              titulo: 'Lista Widget ',
              subtitulo: 'Uso de listas',
            ),
            MenuItem(
              pagina: CalculadoraMenu(),
              leading: 'CA',
              titulo: 'Calculadoras ',
              subtitulo: 'Tarea 1',
            ),
            MenuItem(
              pagina: BlocPage(),
              leading: 'BP',
              titulo: 'Bloc Page ',
              subtitulo: 'Ejemplo basico de bloc page',
            ),
            MenuItem(
              pagina: TextFieldPage(),
              leading: 'TP',
              titulo: 'TextField widget ',
              subtitulo: 'Ejemplo basico textfield',
            ),
            MenuItem(
              pagina: FormulariosPage(),
              leading: 'FP',
              titulo: 'Formularios widget ',
              subtitulo: 'Ejemplo basico de formularios',
            ),
          ],
        ),
      ),
    );
  }
}
