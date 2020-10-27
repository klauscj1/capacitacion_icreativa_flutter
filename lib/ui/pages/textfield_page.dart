import 'package:clase_2/bloc/provider.dart';
import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  TextFieldPage({Key key}) : super(key: key);

  @override
  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  TextEditingController _nombreController = TextEditingController();
  TextEditingController _edadontroller = TextEditingController();
  TextEditingController _contrasenaController = TextEditingController();
  TextEditingController _contrasena2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.getContadorBloc(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField exmaple'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: 'Tu nombre', icon: Icon(Icons.battery_alert)),
              textCapitalization: TextCapitalization.characters,
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              onChanged: bloc.cambiarNombre,
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _nombreController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: 'Tu nombre', icon: Icon(Icons.change_history)),
              textCapitalization: TextCapitalization.characters,
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              cursorColor: Colors.red,
              cursorRadius: Radius.circular(16.0),
              cursorWidth: 16.0,
              onChanged: (value) {
                print(value);
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _edadontroller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'Tu edad',
                  icon: Icon(Icons.brightness_high),
                  helperText: 'Tu edad en años'),
              textAlign: TextAlign.center,
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
                hintText: 'Tu contraseña',
                hintStyle: TextStyle(fontSize: 20, color: Colors.orange),
                icon: Icon(Icons.play_arrow),
              ),
              maxLength: 5,
              //autofocus: true,
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _contrasena2Controller,
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: 'Repita contraseña',
                  // icon: Icon(Icons.play_arrow),
                  border: OutlineInputBorder()),
              maxLength: 5,
              //autofocus: true,
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              onPressed: () {
                print('tengo que sacar los datos de los textfields');

                print('el nombre bloc es: ${bloc.nombre}');
                print('el nombre es: ${_nombreController.text}');
                print('el edad es: ${_edadontroller.text}');
                print('el constrasena es: ${_contrasenaController.text}');
                print('el constrasena2 es: ${_contrasenaController.text}');
                if (_contrasenaController.text == _contrasena2Controller.text) {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Success'),
                          content: Row(
                            children: [
                              Icon(
                                Icons.check,
                                color: Colors.blue,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text('Tienes acceso')
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
                              Text('Las contrasenas no son iguales')
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
                'Guardar',
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
