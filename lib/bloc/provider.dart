import 'package:clase_2/bloc/bloc_page_bloc.dart';
import 'package:flutter/material.dart';

class Provider extends InheritedWidget {
  final contadorBloc = BlocPageBloc();

  //patron singleton
  static Provider _instancia;

  factory Provider({Key key, Widget child}) {
    if (_instancia == null) {
      _instancia = new Provider._internal(key: key, child: child);
    }
    return _instancia;
  }

  Provider._internal({Key key, Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static BlocPageBloc getContadorBloc(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Provider>().contadorBloc;
  }
}
