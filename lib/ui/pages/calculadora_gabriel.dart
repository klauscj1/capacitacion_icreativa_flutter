import 'package:flutter/material.dart';

class CalculadoraGabriel extends StatefulWidget {
  @override
  _CalculadoraGabrielState createState() => _CalculadoraGabrielState();
}

class _CalculadoraGabrielState extends State<CalculadoraGabriel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora Gabriel'),
      ),
    );
  }
}
