import 'dart:ffi';

import 'package:flutter/material.dart';

class CalculadoraGabriel extends StatefulWidget {
  @override
  _CalculadoraGabrielState createState() => _CalculadoraGabrielState();
}

class _CalculadoraGabrielState extends State<CalculadoraGabriel> {
  String respuesta = '';
  String num1 = '';
  String num2 = '';
  bool bandok = true;
  String op = '';
  bool bandr = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora Gabriel'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(''),
            Text('$num1'),
            Text('$op'),
            Text('$num2'),
            Text(''),
            Text('$respuesta'),
            Text(''),
            Row(
              children: [
                FloatingActionButton(
                  heroTag: '1',
                  onPressed: () {
                    if (bandok) {
                      num1 = num1 + '1';
                    } else {
                      num2 = num2 + '1';
                    }
                    if (!bandr) {
                      respuesta = '';
                    }
                    setState(() {});
                    //print('el contador ahora es: $contador');
                  },
                  child: Text('1'),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  heroTag: '2',
                  onPressed: () {
                    if (bandok) {
                      num1 = num1 + '2';
                    } else {
                      num2 = num2 + '2';
                    }
                    if (!bandr) {
                      respuesta = '';
                    }
                    setState(() {});
                    //print('el contador ahora es: $contador');
                  },
                  child: Text('2'),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  heroTag: '3',
                  onPressed: () {
                    if (bandok) {
                      num1 = num1 + '3';
                    } else {
                      num2 = num2 + '3';
                    }
                    if (!bandr) {
                      respuesta = '';
                    }
                    setState(() {});
                    //print('el contador ahora es: $contador');
                  },
                  child: Text('3'),
                ),
              ],
            ),
            Row(
              children: [
                FloatingActionButton(
                  heroTag: '4',
                  onPressed: () {
                    if (bandok) {
                      num1 = num1 + '4';
                    } else {
                      num2 = num2 + '4';
                    }
                    if (!bandr) {
                      respuesta = '';
                    }
                    setState(() {});
                    //print('el contador ahora es: $contador');
                  },
                  child: Text('4'),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  heroTag: '5',
                  onPressed: () {
                    if (bandok) {
                      num1 = num1 + '5';
                    } else {
                      num2 = num2 + '5';
                    }
                    if (!bandr) {
                      respuesta = '';
                    }
                    setState(() {});
                    //print('el contador ahora es: $contador');
                  },
                  child: Text('5'),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  heroTag: '6',
                  onPressed: () {
                    if (bandok) {
                      num1 = num1 + '6';
                    } else {
                      num2 = num2 + '6';
                    }
                    if (!bandr) {
                      respuesta = '';
                    }
                    setState(() {});
                    //print('el contador ahora es: $contador');
                  },
                  child: Text('6'),
                ),
              ],
            ),
            Row(
              children: [
                FloatingActionButton(
                  heroTag: '7',
                  onPressed: () {
                    if (bandok) {
                      num1 = num1 + '7';
                    } else {
                      num2 = num2 + '7';
                    }
                    if (!bandr) {
                      respuesta = '';
                    }
                    setState(() {});
                    //print('el contador ahora es: $contador');
                  },
                  child: Text('7'),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  heroTag: '8',
                  onPressed: () {
                    if (bandok) {
                      num1 = num1 + '8';
                    } else {
                      num2 = num2 + '8';
                    }
                    if (!bandr) {
                      respuesta = '';
                    }
                    setState(() {});
                    //print('el contador ahora es: $contador');
                  },
                  child: Text('8'),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  heroTag: '9',
                  onPressed: () {
                    if (bandok) {
                      num1 = num1 + '9';
                    } else {
                      num2 = num2 + '9';
                    }
                    if (!bandr) {
                      respuesta = '';
                    }
                    setState(() {});
                    //print('el contador ahora es: $contador');
                  },
                  child: Text('9'),
                ),
              ],
            ),
            Row(
              children: [
                FloatingActionButton(
                  heroTag: 'c',
                  onPressed: () {
                    if (bandok) {
                      num1 = num1.substring(0, num1.length - 1);
                    } else {
                      num2 = num1.substring(0, num1.length - 1);
                    }
                    setState(() {});
                    //print('el contador ahora es: $contador');
                  },
                  child: Text('C'),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  heroTag: 'CA',
                  onPressed: () {
                    num1 = '';
                    num2 = '';
                    op = '';
                    respuesta = '';
                    setState(() {});
                    //print('el contador ahora es: $contador');
                  },
                  child: Text('CA'),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  heroTag: '0',
                  onPressed: () {
                    if (bandok) {
                      num1 = num1 + '0';
                    } else {
                      num2 = num2 + '0';
                    }
                    setState(() {});
                    //print('el contador ahora es: $contador');
                  },
                  child: Text('0'),
                ),
              ],
            ),
            Row(
              children: [
                FloatingActionButton(
                  heroTag: '+',
                  onPressed: () {
                    op = '+';
                    bandok = false;
                    setState(() {});
                    //print('el contador ahora es: $contador');
                  },
                  child: Text('+'),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  heroTag: '-',
                  onPressed: () {
                    op = '-';
                    bandok = false;
                    setState(() {});
                    //print('el contador ahora es: $contador');
                  },
                  child: Text('-'),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  heroTag: '*',
                  onPressed: () {
                    op = '*';
                    bandok = false;
                    setState(() {});
                    //print('el contador ahora es: $contador');
                  },
                  child: Text('*'),
                ),
              ],
            ),
            Row(
              children: [
                FloatingActionButton(
                  heroTag: '/',
                  onPressed: () {
                    op = '/';
                    bandok = false;
                    setState(() {});
                    //print('el contador ahora es: $contador');
                  },
                  child: Text('/'),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  heroTag: '=',
                  onPressed: () {
                    switch (op) {
                      case '+':
                        double n1 = double.parse(num1);
                        double n2 = double.parse(num2);
                        double r = n1 + n2;
                        respuesta =
                            'La Respuesta De La Suma Entre $num1 + $num2 Es = $r';
                        break;
                      case '-':
                        double n1 = double.parse(num1);
                        double n2 = double.parse(num2);
                        double r = n1 - n2;
                        respuesta =
                            'La Respuesta De La Resta Entre $num1 + $num2 Es = $r';
                        break;
                      case '*':
                        double n1 = double.parse(num1);
                        double n2 = double.parse(num2);
                        double r = n1 * n2;
                        respuesta =
                            'La Respuesta De La Multiplicacion Entre $num1 + $num2 Es = $r';
                        break;
                      case '/':
                        double n1 = double.parse(num1);
                        double n2 = double.parse(num2);

                        if (n2 > 0) {
                          double r = n1 / n2;
                          respuesta =
                              'La Respuesta De La Division Entre $num1 + $num2 Es = $r';
                        } else {
                          respuesta =
                              'No Se Puede Realizar La Division Revisar Los Numeros Ingresados';
                          num1 = '';
                          num2 = '';
                          bandok = true;
                          op = '';
                        }
                        break;
                    }
                    setState(() {});
                    num1 = '';
                    num2 = '';
                    bandok = true;
                    op = '';
                    bandr = false;
                    //print('el contador ahora es: $contador');
                  },
                  child: Text('='),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
