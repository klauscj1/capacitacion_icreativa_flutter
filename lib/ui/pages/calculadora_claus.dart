import 'package:flutter/material.dart';

class CalculadorClaus extends StatefulWidget {
  @override
  _CalculadorClausState createState() => _CalculadorClausState();
}

class _CalculadorClausState extends State<CalculadorClaus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora claus'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            child: Center(
              child: Text(
                '123.45',
                style: TextStyle(fontSize: 40),
              ),
            ),
          )),
          Expanded(
            child: Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        width: 60,
                        height: 60,
                        child: Center(child: Text('1')),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        width: 60,
                        height: 60,
                        child: Center(child: Text('2')),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        width: 60,
                        height: 60,
                        child: Center(child: Text('3')),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        width: 60,
                        height: 60,
                        child: Center(child: Text('+')),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        width: 60,
                        height: 60,
                        child: Center(child: Text('1')),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        width: 60,
                        height: 60,
                        child: Center(child: Text('2')),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        width: 60,
                        height: 60,
                        child: Center(child: Text('3')),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        width: 60,
                        height: 60,
                        child: Center(child: Text('+')),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        width: 60,
                        height: 60,
                        child: Center(child: Text('1')),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        width: 60,
                        height: 60,
                        child: Center(child: Text('2')),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        width: 60,
                        height: 60,
                        child: Center(child: Text('3')),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        width: 60,
                        height: 60,
                        child: Center(child: Text('+')),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        width: 60,
                        height: 60,
                        child: Center(child: Text('1')),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        width: 60,
                        height: 60,
                        child: Center(child: Text('2')),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        width: 60,
                        height: 60,
                        child: Center(child: Text('3')),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        width: 60,
                        height: 60,
                        child: Center(child: Text('+')),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
