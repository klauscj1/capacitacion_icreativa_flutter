import 'dart:async';
import 'package:rxdart/rxdart.dart';

class BlocPageBloc {
  //final _contadorController = StreamController<int>();
  final _contadorController = BehaviorSubject<int>();
  Stream<int> get contadorStream => _contadorController.stream;
  Function(int) get cambiarContador => _contadorController.sink.add;
  int get contador => _contadorController.value;

  //controlador para una variable string desde un textfield

  final _nombreController = BehaviorSubject<String>();
  Stream<String> get nombreStream => _nombreController.stream;
  Function(String) get cambiarNombre => _nombreController.sink.add;
  String get nombre => _nombreController.value;

  final _nickController = BehaviorSubject<String>();
  Stream<String> get nickStream => _nickController.stream;
  Function(String) get cambiarNick => _nickController.sink.add;
  String get nick => _nickController.value;

  final _emailController = BehaviorSubject<String>();
  Stream<String> get emailStream => _emailController.stream;
  Function(String) get cambiarEmail => _emailController.sink.add;
  String get email => _emailController.value;

  final _passController = BehaviorSubject<String>();
  Stream<String> get passStream => _passController.stream;
  Function(String) get cambiarPass => _passController.sink.add;
  String get pass => _passController.value;

  dispose() {
    _contadorController?.close();
    _nombreController?.close();

    _nickController?.close();
    _emailController?.close();
    _passController?.close();
  }
}
