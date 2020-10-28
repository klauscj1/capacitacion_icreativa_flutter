import 'package:clase_2/bloc/provider.dart';
import 'package:flutter/material.dart';

class FormularioJorge extends StatefulWidget {
  FormularioJorge({Key key}) : super(key: key);

  @override
  _FormularioJorgeState createState() => _FormularioJorgeState();
}

String validateEmails(String value) {
  String pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regExp = new RegExp(pattern);
  if (value.length == 0) {
    return "El correo es necesario";
  } else if (!regExp.hasMatch(value)) {
    return "Correo invalido";
  } else {
    return null;
  }
}

class _FormularioJorgeState extends State<FormularioJorge> {
  TextEditingController _nombreController = TextEditingController();
  TextEditingController _correoelectronico = TextEditingController();
  TextEditingController _contrasenaController = TextEditingController();
  TextEditingController _contrasena2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario Jorge'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _nombreController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: 'Nombre de usuario',
                  icon: Icon(Icons.person, color: Colors.black)),
              textCapitalization: TextCapitalization.characters,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              //cursorColor: Colors.red,
              //cursorRadius: Radius.circular(16.0),
              //cursorWidth: 16.0,
              onChanged: (value) {
                print(value);
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
                controller: _correoelectronico,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Correo electrónico',
                  icon: Icon(Icons.email, color: Colors.black),
                  //helperText: 'Tu edad en años'
                ),
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold)
                //textAlign: TextAlign.center,
                //autofocus: true,
                ),
            SizedBox(
              height: 10,
            ),
            TextField(
                controller: _contrasenaController,
                obscureText: true,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Contraseña',
                  //hintStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                  icon: Icon(Icons.lock, color: Colors.black),
                ),
                maxLength: 5,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold)
                //autofocus: true,

                ),
            SizedBox(
              height: 10,
            ),
            /* */
            TextField(
                controller: _contrasena2Controller,
                obscureText: true,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Vuelva a ingresar la contraseña',
                  //hintStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                  icon: Icon(Icons.lock_open, color: Colors.black),
                ),
                maxLength: 5,
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              onPressed: () {
                String value = _correoelectronico.text;
                print(validateEmails(value));
                String res = validateEmails(value);

                if (_contrasenaController.text == _contrasena2Controller.text &&
                    res == null) {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Datos'),
                          content: Row(
                            children: [
                              Icon(
                                Icons.check,
                                color: Colors.blue,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              //Text('Tienes acceso')
                              Text(
                                  'Nombre: \n${_nombreController.text} \nCorreo electrónico: \n${_correoelectronico.text} \nContraseña: \n${_contrasenaController.text} \nContraseña: \n${_contrasena2Controller.text}',
                                  style: TextStyle(color: Colors.black))
                            ],
                          ),
                          actions: [
                            RaisedButton(
                              color: Colors.blue,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                'Aceptar',
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        );
                      });
                } else {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Error'),
                          content: Row(
                            children: [
                              Icon(
                                Icons.close,
                                color: Colors.red,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text('Las contrasenas o \nel correo es inválido')
                            ],
                          ),
                          actions: [
                            RaisedButton(
                              color: Colors.red,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                'Aceptar',
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        );
                      });
                }
              },
              child: Text(
                'GUARDAR',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
