import 'package:flutter/material.dart';

class CalculadoraEdison extends StatefulWidget {
  @override
  _CalculadoraState createState() => _CalculadoraState();
}

class _CalculadoraState extends State<CalculadoraEdison> {
  Widget crearBoton(String btntxt, String hero) {
    return FloatingActionButton(
      heroTag: '$hero',
      onPressed: () {
        calcular('$btntxt');
      },
      child: Text(
        '$btntxt',
        style: TextStyle(fontSize: 30),
      ),
    );
  }

  Widget espaciadoBoton() {
    return SizedBox(
      width: 10,
    );
  }

  Widget espaciadoSaltos() {
    return SizedBox(
      height: 10,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Calculadora'),
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
                  margin: EdgeInsets.only(top: 20.0),
                  padding: EdgeInsets.all(40.0),
                  color: Colors.grey,
                  height: 250,
                  child: new Text(
                    '$text',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40.0,
                    ),
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
                crearBoton('7', 'btn_7'),
                espaciadoBoton(),
                crearBoton('8', 'btn_8'),
                espaciadoBoton(),
                crearBoton('9', 'btn_9'),
                espaciadoBoton(),
                crearBoton('/', 'btn_/'),
                espaciadoBoton(),
              ],
            ),
            espaciadoSaltos(),
            Row(
              children: [
                crearBoton('4', 'btn_4'),
                espaciadoBoton(),
                crearBoton('5', 'btn_5'),
                espaciadoBoton(),
                crearBoton('6', 'btn_6'),
                espaciadoBoton(),
                crearBoton('*', 'btn_multi'),
                espaciadoBoton(),
              ],
            ),
            espaciadoSaltos(),
            Row(
              children: [
                crearBoton('1', 'btn_1'),
                espaciadoBoton(),
                crearBoton('2', 'btn_2'),
                espaciadoBoton(),
                crearBoton('3', 'btn_3'),
                espaciadoBoton(),
                crearBoton('-', 'btn_restar'),
                espaciadoBoton(),
              ],
            ),
            espaciadoSaltos(),
            Row(
              children: [
                crearBoton('0', 'btn_cero'),
                espaciadoBoton(),
                crearBoton('.', 'btn_punto'),
                espaciadoBoton(),
                crearBoton('=', 'btn_igual'),
                espaciadoBoton(),
                crearBoton('+', 'btn_sumar'),
                espaciadoBoton(),
              ],
            ),
            crearBoton('AC', 'btn_Ac'),
            espaciadoBoton(),
          ],
        ),
      ),
    );
  }

  ///////////Metodo Para Calcular////////////////////////////
  dynamic text = '0';
  double num1 = 0;
  double num2 = 0;

  dynamic resultado = '';
  dynamic finalResult = '';
  dynamic opr = '';
  dynamic preOpr = '';

  void calcular(btnText) {
    if (btnText == 'AC') {
      text = '0';
      num1 = 0;
      num2 = 0;
      resultado = '';
      finalResult = '0';
      opr = '';
      preOpr = '';
    } else if (opr == '=' && btnText == '=') {
      if (preOpr == '+') {
        finalResult = mSuma();
      } else if (preOpr == '-') {
        finalResult = mResta();
      } else if (preOpr == '*') {
        finalResult = mMult();
      } else if (preOpr == '/') {
        finalResult = mDiv();
      }
    } else if (btnText == '+' ||
        btnText == '-' ||
        btnText == '*' ||
        btnText == '/' ||
        btnText == '=') {
      if (num1 == 0) {
        num1 = double.parse(resultado);
      } else {
        num2 = double.parse(resultado);
      }

      if (opr == '+') {
        finalResult = mSuma();
      } else if (opr == '-') {
        finalResult = mResta();
      } else if (opr == '*') {
        finalResult = mMult();
      } else if (opr == '/') {
        finalResult = mDiv();
      }
      preOpr = opr;
      opr = btnText;
      resultado = '';
    } else if (btnText == '.') {
      if (!resultado.toString().contains('.')) {
        resultado = resultado.toString() + '.';
      }
      finalResult = resultado;
    } else {
      resultado = resultado + btnText;
      finalResult = resultado;
    }

    setState(() {
      text = finalResult;
    });
  }

  String mSuma() {
    resultado = (num1 + num2).toString();
    num1 = double.parse(resultado);
    return contDecimales(resultado);
  }

  String mResta() {
    resultado = (num1 - num2).toString();
    num1 = double.parse(resultado);
    return contDecimales(resultado);
  }

  String mMult() {
    resultado = (num1 * num2).toString();
    num1 = double.parse(resultado);
    return contDecimales(resultado);
  }

  String mDiv() {
    resultado = (num1 / num2).toString();
    num1 = double.parse(resultado);
    return contDecimales(resultado);
  }

  String contDecimales(dynamic result) {
    if (result.toString().contains('.')) {
      List<String> splitDecimal = result.toString().split('.');
      if (!(int.parse(splitDecimal[1]) > 0))
        return result = splitDecimal[0].toString();
    }
    return result;
  }
}
