import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class FormularioEdisson extends StatefulWidget {
  @override
  _FormularioEdissonState createState() => _FormularioEdissonState();
}

Widget crearTextFiel(String hintTexto, String labelTexto,
    TextEditingController controler, IconData icono , bool passtextfield, TextInputType tipoText) {
  return TextField(
    obscureText: passtextfield,
    controller: controler,
    keyboardType: tipoText,
    decoration: InputDecoration(
      border: new OutlineInputBorder(
          borderSide: new BorderSide(color: Colors.grey)),
      labelText: '$labelTexto',
      hintText: '$hintTexto',
      prefixIcon: Icon(
        icono,
        color: Colors.green,
      ),
    ),
  );
}

Widget crearShowDialogs(String titulo, String texto, IconData icono, Color color, BuildContext context) {
  return AlertDialog(
    title: Text('$titulo'),
    content: Row(
      children: [
        Icon(icono,color: color,),
        SizedBox(width: 20,),
        Text('$texto'),
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
}

Widget espaciadoSaltos() {
  return SizedBox(
    height: 10,
  );
}

class _FormularioEdissonState extends State<FormularioEdisson> {
  TextEditingController _nombreControl = TextEditingController();
  TextEditingController _apellidoControl = TextEditingController();
  TextEditingController _edadControl = TextEditingController();
  TextEditingController _cedulaControl = TextEditingController();
  TextEditingController _correoControl = TextEditingController();
  TextEditingController _passwordControl = TextEditingController();
  TextEditingController _paswordConfirmControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: (Colors.black),
        title: Text('Formulario Edisson'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                espaciadoSaltos(),
                crearTextFiel('Ingrese su Nombre', 'Nombre', _nombreControl,
                    Icons.person,false,TextInputType.text),
                espaciadoSaltos(),
                crearTextFiel('Ingrese su Apellido', 'Apelldio',
                    _apellidoControl, Icons.person,false,TextInputType.text),
                espaciadoSaltos(),
                crearTextFiel(
                    'Ingrese su Edad', 'Edad', _edadControl, Icons.person,false,TextInputType.number),
                espaciadoSaltos(),
                crearTextFiel('Ingrese su Cedula de Identidad', 'Cedula',
                    _cedulaControl, Icons.person,false,TextInputType.number),
                espaciadoSaltos(),
                crearTextFiel('Ingrese su Correo Electronico', 'Correo',
                    _correoControl, Icons.email,false,TextInputType.emailAddress),
                espaciadoSaltos(),
                crearTextFiel('Ingrese una Contraseña', 'Contraseña',
                    _passwordControl, Icons.vpn_key,true,TextInputType.text),
                espaciadoSaltos(),
                crearTextFiel('Confirme su Contraseña', 'Confirme Contraseña',
                    _paswordConfirmControl, Icons.vpn_key,true,TextInputType.text),
                espaciadoSaltos(),
                RaisedButton(
                  child: Text("Guardar"),
                  splashColor: Colors.yellow,
                  color: Colors.green,
                  onPressed: () {
                    if (_nombreControl.text == '' ||
                        _apellidoControl.text == '' ||
                        _edadControl.text == '' ||
                        _cedulaControl.text == '' ||
                        _correoControl.text == '' ||
                        _paswordConfirmControl.text == '' ||
                        _passwordControl.text == '') {
                      showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (context) {
                            return crearShowDialogs('alerta', 'Ingrese todos los Campos', Icons.alarm, Colors.yellow, context);
                          });
                    } else if (EmailValidator.validate(_correoControl.text)) {
                      if (_passwordControl.text ==
                          _paswordConfirmControl.text) {
                        showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (context) {
                              return SimpleDialog(
                                title: Center(child: Text("Datos Guardados")),
                                children: <Widget>[
                                  Icon(
                                    Icons.check,
                                    color: Colors.green,
                                  ),
                                  Center(child: Text("${_nombreControl.text}")),
                                  Center(child: Text("${_apellidoControl.text}")),
                                  Center(child: Text("${_edadControl.text}")),
                                  Center(child: Text("${_cedulaControl.text}")),
                                  Center(child: Text("${_correoControl.text}")),
                                  Center(
                                      child: Text("${_passwordControl.text}")),
                                  Center(
                                      child: RaisedButton(
                                          child: Text(
                                            "Aceptar",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          color: Colors.blue,
                                          onPressed: () {
                                            Navigator.pop(context);
                                          })),
                                ],
                              );
                            });
                      } else {
                        showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (context) {
                              return crearShowDialogs('Alerta Contraseñas', 'Contraseñas Diferentes', Icons.alarm, Colors.red, context);
                            });
                      }
                    } else {
                      showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (context) {
                            return crearShowDialogs('Alerta de Correo', 'Correo Invalido ',  Icons.alarm, Colors.red, context);
                          });
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  bool validarCorreo(String correo) {
    String patrones =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(patrones);
    return (!regex.hasMatch(correo)) ? false : true;
  }
}
