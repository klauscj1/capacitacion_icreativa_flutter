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
                    bandok ? num1 = num1 + '1' : num2 = num2 + '1';
                    !bandr ? respuesta = '' : respuesta = respuesta;
                    setState(() {});
                  },
                  child: Text('1'),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  heroTag: '2',
                  onPressed: () {
                    bandok ? num1 = num1 + '2' : num2 = num2 + '2';
                    !bandr ? respuesta = '' : respuesta = respuesta;
                    setState(() {});
                  },
                  child: Text('2'),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  heroTag: '3',
                  onPressed: () {
                    bandok ? num1 = num1 + '3' : num2 = num2 + '3';
                    !bandr ? respuesta = '' : respuesta = respuesta;
                    setState(() {});
                  },
                  child: Text('3'),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Row(
              children: [
                FloatingActionButton(
                  heroTag: '4',
                  onPressed: () {
                    bandok ? num1 = num1 + '4' : num2 = num2 + '4';
                    !bandr ? respuesta = '' : respuesta = respuesta;
                    setState(() {});
                  },
                  child: Text('4'),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  heroTag: '5',
                  onPressed: () {
                    bandok ? num1 = num1 + '5' : num2 = num2 + '5';
                    !bandr ? respuesta = '' : respuesta = respuesta;
                    setState(() {});
                  },
                  child: Text('5'),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  heroTag: '6',
                  onPressed: () {
                    bandok ? num1 = num1 + '6' : num2 = num2 + '6';
                    !bandr ? respuesta = '' : respuesta = respuesta;
                    setState(() {});
                  },
                  child: Text('6'),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Row(
              children: [
                FloatingActionButton(
                  heroTag: '7',
                  onPressed: () {
                    bandok ? num1 = num1 + '7' : num2 = num2 + '7';
                    !bandr ? respuesta = '' : respuesta = respuesta;
                    setState(() {});
                  },
                  child: Text('7'),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  heroTag: '8',
                  onPressed: () {
                    bandok ? num1 = num1 + '8' : num2 = num2 + '8';
                    !bandr ? respuesta = '' : respuesta = respuesta;
                    setState(() {});
                  },
                  child: Text('8'),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  heroTag: '9',
                  onPressed: () {
                    bandok ? num1 = num1 + '9' : num2 = num2 + '9';
                    !bandr ? respuesta = '' : respuesta = respuesta;
                    setState(() {});
                  },
                  child: Text('9'),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Row(
              children: [
                FloatingActionButton(
                  heroTag: 'c',
                  onPressed: () {
                    bandok
                        ? num1 = num1.substring(0, num1.length - 1)
                        : num2 = num1.substring(0, num1.length - 1);
                    setState(() {});
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
                  },
                  child: Text('CA'),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  heroTag: '0',
                  onPressed: () {
                    bandok ? num1 = num1 + '0' : num2 = num2 + '0';
                    !bandr ? respuesta = '' : respuesta = respuesta;
                    setState(() {});
                  },
                  child: Text('0'),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Row(
              children: [
                FloatingActionButton(
                  heroTag: '+',
                  onPressed: () {
                    op = '+';
                    bandok = false;
                    setState(() {});
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
                  },
                  child: Text('*'),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Row(
              children: [
                FloatingActionButton(
                  heroTag: '/',
                  onPressed: () {
                    op = '/';
                    bandok = false;
                    setState(() {});
                  },
                  child: Text('/'),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  heroTag: '=',
                  onPressed: () {
                    double n1 = double.parse(num1);
                    double n2 = double.parse(num2);
                    switch (op) {
                      case '+':
                        double r = n1 + n2;
                        respuesta =
                            'La Respuesta De La Suma Entre $num1 + $num2 Es = $r';
                        break;
                      case '-':
                        double r = n1 - n2;
                        respuesta =
                            'La Respuesta De La Resta Entre $num1 - $num2 Es = $r';
                        break;
                      case '*':
                        double r = n1 * n2;
                        respuesta =
                            'La Respuesta De La Multiplicacion Entre $num1 * $num2 Es = $r';
                        break;
                      case '/':
                        if (n2 > 0) {
                          double r = n1 / n2;
                          respuesta =
                              'La Respuesta De La Division Entre $num1 / $num2 Es = $r';
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
