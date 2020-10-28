import 'package:clase_2/bloc/provider.dart';
import 'package:flutter/material.dart';
import 'package:frino_icons/frino_icons.dart';

class FormularioGabriel extends StatefulWidget {
  FormularioGabriel({Key key}) : super(key: key);

  @override
  _FormularioGabriel createState() => _FormularioGabriel();
}

class _FormularioGabriel extends State<FormularioGabriel> {
  TextEditingController _contrasenaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.getContadorBloc(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('FORMULARIO GABRIEL'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            SizedBox(
              height: 25,
            ),
            TextField(
              keyboardType: TextInputType.text,
              textCapitalization: TextCapitalization.characters,
              decoration: InputDecoration(
                hintText: 'INGRESE SU NICKNAME',
                hintStyle: TextStyle(fontSize: 20, color: Colors.green[300]),
                icon:
                    Icon(FrinoIcons.f_user, color: Colors.green[500], size: 40),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green[200], width: 3.0),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green[500], width: 3.0),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              style: TextStyle(
                  color: Colors.green[400],
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
              onChanged: bloc.cambiarNick,
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'INGRESE SU E-MAIL',
                hintStyle: TextStyle(fontSize: 20, color: Colors.blue[300]),
                icon: Icon(FrinoIcons.f_at, color: Colors.blue[500], size: 40),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue[200], width: 3.0),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue[500], width: 3.0),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              style: TextStyle(
                  color: Colors.blue[400],
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
              onChanged: bloc.cambiarEmail,
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'INGRESE SU PASSWORD',
                hintStyle: TextStyle(fontSize: 20, color: Colors.yellow[300]),
                icon: Icon(FrinoIcons.f_apps,
                    color: Colors.yellow[500], size: 40),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellow[200], width: 3.0),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellow[500], width: 3.0),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              style: TextStyle(
                  color: Colors.yellow[400],
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
              maxLength: 5,
              onChanged: bloc.cambiarPass,
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
              controller: _contrasenaController,
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'CONFIRME SU PASSWORD',
                hintStyle: TextStyle(fontSize: 20, color: Colors.red[300]),
                icon: Icon(FrinoIcons.f_check_list,
                    color: Colors.red[500], size: 40),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red[200], width: 3.0),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red[500], width: 3.0),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              style: TextStyle(
                  color: Colors.red[400],
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
              maxLength: 5,
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 60,
              child: (RaisedButton(
                onPressed: () {
                  print('el nombre bloc es: ${bloc.nombre}');
                  print('el email es: ${bloc.email}');
                  print('el pass es: ${bloc.pass}');
                  if (validaemail(bloc.email)) {
                    if (bloc.pass == _contrasenaController.text) {
                      showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('EXITO!!!...'),
                              content: Row(
                                children: [
                                  Icon(
                                    FrinoIcons.f_save,
                                    color: Colors.green[500],
                                    size: 50,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text('DATOS GUARDADOS')
                                ],
                              ),
                              actions: [
                                RaisedButton(
                                  color: Colors.green[300],
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
                              title: Text('ERROR'),
                              content: Row(
                                children: [
                                  Icon(
                                    FrinoIcons.f_clone,
                                    color: Colors.red,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text('LAS CONTRASEÑAS NO COINCIDEN')
                                ],
                              ),
                              actions: [
                                RaisedButton(
                                  color: Colors.red,
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    'ACEPTAR',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            );
                          });
                    }
                  } else {
                    showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('ERROR'),
                            content: Row(
                              children: [
                                Icon(
                                  FrinoIcons.f_mail,
                                  color: Colors.red,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text('E-MAIL INVALIDO')
                              ],
                            ),
                            actions: [
                              RaisedButton(
                                color: Colors.red,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'ACEPTAR',
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
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                color: Colors.black,
              )),
            )
          ],
        ),
      ),
    );
  }
}

bool validaemail(String email) {
  int posarrova = 0;
  int pospunto = 0;
  bool bandok = false;
  for (int i = 0; i < email.length; i++) {
    print(email.substring(i, i + 1));
    if (email.substring(i, i + 1) == "@") {
      posarrova = i;
      print("-----");
      for (int j = 0; j < posarrova; j++) {
        print(email.substring(j, j + 1));
        if (email.substring(j + 1) == "(" ||
            email.substring(j + 1) == ")" ||
            email.substring(j + 1) == "[" ||
            email.substring(j + 1) == "]" ||
            email.substring(j + 1) == "{" ||
            email.substring(j + 1) == "}" ||
            email.substring(j + 1) == "<" ||
            email.substring(j + 1) == ">" ||
            email.substring(j + 1) == ";" ||
            email.substring(j + 1) == ":" ||
            email.substring(j + 1) == " ") {
          bandok = false;
          j = posarrova;
        } else {
          if (posarrova < email.length) {
            print("-----");
            for (int k = posarrova + 1; k < email.length; k++) {
              print(email.substring(k, k + 1));
              if (email.substring(k, k + 1) == ".") {
                pospunto = k;
                print("-----");
                for (int l = posarrova + 1; l < pospunto; l++) {
                  print(email.substring(l, l + 1));
                  if (email.substring(l, l + 1) == "@" ||
                      email.substring(l, l + 1) == " ") {
                    bandok = false;
                    l = pospunto;
                  } else {
                    if (pospunto < email.length) {
                      print("-----");
                      for (int m = pospunto; m < email.length; m++) {
                        print(email.substring(m, m + 1));
                        if (email.substring(m, m + 1) == "@" ||
                            email.substring(m, m + 1) == " ") {
                          bandok = false;
                          m = email.length;
                        } else {
                          if (email.substring(email.length - 1) == ".") {
                            bandok = false;
                          } else {
                            bandok = true;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
      i = email.length;
    }
  }
  return bandok;
}
