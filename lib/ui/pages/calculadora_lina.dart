import 'package:flutter/material.dart';

class CalculadoraLina extends StatefulWidget {
  @override
  _CalculadoraLinaState createState() => new _CalculadoraLinaState();
}

class _CalculadoraLinaState extends State<CalculadoraLina> {
  double num1 = 0.0;
  double num2 = 0.0;
  String signoOperador = "";
  String textoSalida = "0";
  String resultado = "0";

  clickButton(String buttonText) {
    if (buttonText == "CLEAR") {
      resultado = "0";
      num1 = 0.0;
      num2 = 0.0;
      signoOperador = "";
    } else if (buttonText == "+" ||
        buttonText == "-" ||
        buttonText == "/" ||
        buttonText == "X") {
      num1 = double.parse(textoSalida);

      signoOperador = buttonText;

      resultado = "0";
    } else if (buttonText == ".") {
      if (resultado.contains(".")) {
        return;
      } else {
        resultado = resultado + buttonText;
      }
    } else if (buttonText == "=") {
      num2 = double.parse(textoSalida);

      if (signoOperador == "+") {
        resultado = (num1 + num2).toString();
      }
      if (signoOperador == "-") {
        resultado = (num1 - num2).toString();
      }
      if (signoOperador == "X") {
        resultado = (num1 * num2).toString();
      }
      if (signoOperador == "/") {
        resultado = (num1 / num2).toString();
      }

      num1 = 0.0;
      num2 = 0.0;
      signoOperador = "";
    } else {
      resultado = resultado + buttonText;
    }

    print(resultado);

    setState(() {
      textoSalida = double.parse(resultado).toStringAsFixed(2);
    });
  }

  Widget buildButton(String buttonText) {
    return new Expanded(
      child: new OutlineButton(
        padding: new EdgeInsets.all(25.0),
        child: new Text(
          buttonText,
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        onPressed: () => clickButton(buttonText),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(),
        body: new Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80),
            ),
            child: new Column(
              children: <Widget>[
                new Container(
                    alignment: Alignment.centerRight,
                    padding: new EdgeInsets.symmetric(
                        vertical: 60.0, horizontal: 12.0),
                    child: new Text(textoSalida,
                        style: new TextStyle(
                          fontSize: 48.0,
                          fontWeight: FontWeight.bold,
                        ))),
                new Expanded(
                  child: new Divider(),
                ),
                new Column(children: [
                  new Row(children: [
                    buildButton("7"),
                    buildButton("8"),
                    buildButton("9"),
                    buildButton("/")
                  ]),
                  new Row(children: [
                    buildButton("4"),
                    buildButton("5"),
                    buildButton("6"),
                    buildButton("X")
                  ]),
                  new Row(children: [
                    buildButton("1"),
                    buildButton("2"),
                    buildButton("3"),
                    buildButton("-")
                  ]),
                  new Row(children: [
                    buildButton("."),
                    buildButton("0"),
                    buildButton("00"),
                    buildButton("+")
                  ]),
                  new Row(children: [
                    buildButton("CLEAR"),
                    buildButton("="),
                  ])
                ])
              ],
            )));
  }
}
