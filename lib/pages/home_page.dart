import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final cantidad = 10;
  final estilo = new TextStyle(fontSize: 30);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo Scafflod AppBar'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de clicks:',style: estilo),
            Text('$cantidad',style: estilo)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.add),
        onPressed: () => {
          print('hola mundo')
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat
    );

  }

}