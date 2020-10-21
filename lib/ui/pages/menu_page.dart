import 'package:clase_2/ui/pages/con_estado.dart';
import 'package:clase_2/ui/pages/home_page.dart';
import 'package:clase_2/ui/pages/list_page.dart';
import 'package:clase_2/ui/pages/sin_estado.dart';
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.blue,
              child: ListTile(
                title: Text(
                  'Home page',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                leading: Text(
                  'H',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                ),
                subtitle: Text(
                  'Este es el primer ejemplo',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.blue,
              child: ListTile(
                title: Text(
                  'List page',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                leading: Text(
                  'L',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                ),
                subtitle: Text(
                  'Este es el primer ejemplo',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ListPage()));
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.blue,
              child: ListTile(
                title: Text(
                  'Widget sin estado',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                leading: Text(
                  'WS',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                ),
                subtitle: Text(
                  'Este es el primer ejemplo',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SinEstado()));
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.blue,
              child: ListTile(
                title: Text(
                  'Widget con estado',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                leading: Text(
                  'WC',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                ),
                subtitle: Text(
                  'Este es el primer ejemplo',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ConEstado()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
