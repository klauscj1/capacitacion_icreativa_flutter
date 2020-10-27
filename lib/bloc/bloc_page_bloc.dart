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

  dispose() {
    _contadorController?.close();
    _nombreController?.close();
  }
}
