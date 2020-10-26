import 'dart:async';
import 'package:rxdart/rxdart.dart';

class BlocPageBloc {
  //final _contadorController = StreamController<int>();
  final _contadorController = BehaviorSubject<int>();
  Stream<int> get contadorStream => _contadorController.stream;
  Function(int) get cambiarContador => _contadorController.sink.add;
  int get contador => _contadorController.value;

  dispose() {
    _contadorController?.close();
  }
}
