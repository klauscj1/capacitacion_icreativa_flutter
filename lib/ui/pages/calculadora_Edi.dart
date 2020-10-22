import 'package:flutter/material.dart';

class CalculadoraEdison extends StatefulWidget {
  @override
  _CalculadoraState createState() => _CalculadoraState();
}

class _CalculadoraState extends State<CalculadoraEdison> {
  // creamos las variables

  int resultado = 0;
  String valor_ingresado = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Calculadora EDIS'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          //width: MediaQuery.of(context).size.height*0.9,
          //margin: EdgeInsets.only(top: 30.0),
          padding: EdgeInsets.all(30.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  width: MediaQuery.of(context).size.height * 0.9,
                  margin: EdgeInsets.only(top: 30.0),
                  padding: EdgeInsets.all(30.0),
                  color: Colors.grey,
                  height: 250,
                  child: new Text(
                    '$valor_ingresado',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 40.0, fontFamily: 'Karla'),
                  )),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        margin: EdgeInsets.only(top: 30.0),
        padding: EdgeInsets.all(30.0),

        ///CREAMO LA BARRA DE BOTONES  1 ////////
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                FloatingActionButton(
                  heroTag: 'btn_7',
                  onPressed: () {
                    valor_ingresado = valor_ingresado + '7';
                    setState(() {});
                    //print('el contador ahora es: $contador');
                  },
                  child: Text(
                    '7',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  heroTag: 'btn_8',
                  onPressed: () {
                    valor_ingresado = valor_ingresado + '8';

                    setState(() {});
                    //print('el contador ahora es: $contador');
                  },
                  child: Text(
                    '8',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  heroTag: 'btn_9',
                  onPressed: () {
                    valor_ingresado = valor_ingresado + '9';
                    setState(() {});
                    //print('el contador ahora es: $contador');
                  },
                  child: Text(
                    '9',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {});
                    //print('el contador ahora es: $contador');
                  },
                  child: Text(
                    '/',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                FloatingActionButton(
                  heroTag: 'btn_4',
                  onPressed: () {
                    valor_ingresado = valor_ingresado + '4';
                    setState(() {});
                    //print('el contador ahora es: $contador');
                  },
                  child: Text(
                    '4',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  heroTag: 'btn_5',
                  onPressed: () {
                    valor_ingresado = valor_ingresado + '5';
                    setState(() {});
                    //print('el contador ahora es: $contador');
                  },
                  child: Text(
                    '5',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  heroTag: 'btn_6',
                  onPressed: () {
                    valor_ingresado = valor_ingresado + '6';
                    setState(() {});
                    //print('el contador ahora es: $contador');
                  },
                  child: Text(
                    '6',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  heroTag: 'btn_multi',
                  onPressed: () {
                    setState(() {});
                    //print('el contador ahora es: $contador');
                  },
                  child: Text(
                    '*',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                FloatingActionButton(
                  heroTag: 'btn_1',
                  onPressed: () {
                    valor_ingresado = valor_ingresado + '1';
                    setState(() {});
                    //print('el contador ahora es: $contador');
                  },
                  child: Text(
                    '1',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  heroTag: 'btn_2',
                  onPressed: () {
                    valor_ingresado = valor_ingresado + '2';
                    setState(() {});
                    //print('el contador ahora es: $contador');
                  },
                  child: Text(
                    '2',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  heroTag: 'btn_3',
                  onPressed: () {
                    valor_ingresado = valor_ingresado + '3';
                    setState(() {});
                    //print('el contador ahora es: $contador');
                  },
                  child: Text(
                    '3',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  heroTag: 'btn_restar',
                  onPressed: () {
                    setState(() {});
                    //print('el contador ahora es: $contador');
                  },
                  child: Text(
                    '-',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                FloatingActionButton(
                  heroTag: 'btn_cero',
                  onPressed: () {
                    valor_ingresado = valor_ingresado + '0';
                    setState(() {});
                    //print('el contador ahora es: $contador');
                  },
                  child: Text(
                    '0',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  heroTag: 'btn_punto',
                  onPressed: () {
                    setState(() {});
                    //print('el contador ahora es: $contador');
                  },
                  child: Text(
                    '.',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  heroTag: 'btn_igual',
                  onPressed: () {
                    valor_ingresado = '';
                    setState(() {});
                    //print('el contador ahora es: $contador');
                  },
                  child: Text(
                    '=',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  heroTag: 'btn_sumar',
                  onPressed: () {
                    setState(() {});
                    //print('el contador ahora es: $contador');
                  },
                  child: Text(
                    '+',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
