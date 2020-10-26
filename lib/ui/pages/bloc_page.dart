import 'package:clase_2/bloc/bloc_page_bloc.dart';
import 'package:clase_2/bloc/provider.dart';
import 'package:flutter/material.dart';

class BlocPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('se redibuja');
    final bloc = Provider.getContadorBloc(context);
    bloc.cambiarContador(0);
    return Scaffold(
      appBar: AppBar(
        title: Text('Bloc page'),
      ),
      body: _cuerpo(context, bloc),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          bloc.cambiarContador(bloc.contador + 1);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _cuerpo(BuildContext context, BlocPageBloc bloc) {
    return Center(
      child: StreamBuilder(
        stream: bloc.contadorStream,
        //initialData: 0,
        builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
          if (snapshot.hasError) {
            return Text('Error');
          } else {
            return Text(
              '${snapshot.data}',
              style: TextStyle(fontSize: 40),
            );
          }
        },
      ),
    );
  }
}
