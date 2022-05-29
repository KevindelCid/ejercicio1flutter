import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: <Widget>[
              Row(
                children: <Widget>[
                  const Expanded(child: Text('Activar sonido')),
                  Switch(
                    value: true,
                    onChanged: _chan,
                  ),
                ],
              ),
              const Divider(),
              Row(
                children: <Widget>[
                  const Expanded(child: Text('Activar Camara')),
                  Switch(
                    value: true,
                    onChanged: _chan,
                  )
                ],
              ),
              const Divider(),
              Row(
                children: <Widget>[
                  const Expanded(child: Text('Activar modo Nopor')),
                  Switch(
                    value: true,
                    onChanged: _chan,
                  )
                ],
              ),
            ]),
          ),
        ));
  }

  void _chan(bool value) {}
}
