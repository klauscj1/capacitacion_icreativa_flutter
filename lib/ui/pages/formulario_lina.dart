import 'package:flutter/material.dart';

class FormularioLina extends StatefulWidget {
  FormularioLina({Key key}) : super(key: key);

  @override
  _FormularioLinaState createState() => _FormularioLinaState();
}

class _FormularioLinaState extends State<FormularioLina> {
  TextEditingController _nombreController = TextEditingController();
  TextEditingController _apellidoController = TextEditingController();
  TextEditingController _edadController = TextEditingController();
  TextEditingController _correoController = TextEditingController();
  TextEditingController _claveController = TextEditingController();
  TextEditingController _clave2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario Lina'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TextField(
                  controller: _nombreController,
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: 'Nombre', icon: Icon(Icons.account_box)),
                  //textCapitalization: TextCapitalization.characters,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  onChanged: (value) {
                    print(value);
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _apellidoController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: 'Apellido', icon: Icon(Icons.account_box)),
                  style: TextStyle(fontWeight: FontWeight.bold),
                  onChanged: (value) {
                    print(value);
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _edadController,
                  keyboardType: TextInputType.number,
                  decoration:
                      InputDecoration(hintText: 'Edad', icon: Icon(Icons.adb)),
                  style: TextStyle(fontWeight: FontWeight.bold),
                  onChanged: (value) {
                    print(value);
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _correoController,
                  keyboardType: TextInputType.emailAddress,
                  validator: (valor) =>
                      !valor.contains('@') ? 'Correo no válido' : null,
                  onSaved: (valor) =>
                      _correoController = valor as TextEditingController,
                  decoration: InputDecoration(
                      hintText: 'Correo',
                      icon: Icon(Icons.email),
                      helperText: 'ejemplo@gmail.com'),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _claveController,
                  obscureText: true,
                  maxLength: 10,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: 'Contraseña', icon: Icon(Icons.https)),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _clave2Controller,
                  obscureText: true,
                  maxLength: 10,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: 'Repita la contraseña',
                      icon: Icon(Icons.https)),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                RaisedButton(
                  onPressed: () {
                    if (_claveController.text == _clave2Controller.text) {
                      showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Datos de Acceso'),
                              content: Row(
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text('Nombre: ${_nombreController.text}'),
                                      //SizedBox(width: 20),
                                      Text(
                                          'Apellido: ${_apellidoController.text}'),
                                      //SizedBox(width: 20),
                                      Text('Edad: ${_edadController.text}'),
                                      //SizedBox(width: 20),
                                      Text('Correo: ${_correoController.text}'),
                                      //SizedBox(width: 20),
                                      Text('Clave 1: ${_claveController.text}'),
                                      // SizedBox(width: 20),
                                      Text(
                                          'Clave 2: ${_clave2Controller.text}'),
                                      Icon(Icons.check, color: Colors.blue),
                                      SizedBox(width: 20),
                                      Text('Tienes acceso')
                                    ],
                                  ),
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
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.close,
                                        color: Colors.red,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text('Las contraseÑas no son iguales')
                                    ],
                                  ),
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
                    'GUARDAR DATOS',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
