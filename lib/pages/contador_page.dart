import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage> {
  int _cantidad = 10;
  final _estilo = new TextStyle(fontSize: 30);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo StatefulWidget AppBar'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de clicks:', style: _estilo),
            Text('$_cantidad', style: _estilo)
          ],
        ),
      ),
      floatingActionButton: _createBotton(),
    );
  }

  Widget _createBotton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 30,
        ),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: () => _subtract(),
        ),
        Expanded(
          child: SizedBox(),
        ),
        FloatingActionButton(
          child: Icon(Icons.exposure),
          onPressed: () => _restart(),
        ),
        Expanded(
          child: SizedBox(),
        ),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => _add(),
        )
      ],
    );
  }

  void _add() {
    setState(() => {print('ingresa'), _cantidad++});
  }

  void _subtract() {
    setState(() => {_cantidad--});
  }

  void _restart() {
    setState(() => {_cantidad = 0});
  }
}
