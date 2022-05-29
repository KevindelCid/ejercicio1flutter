import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Uso del Column'),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(color: Colors.green, height: 100, width: 100),
                const Text(
                    'Holi aqui pos estoy debajo de ese cuadro verde feo'),
                Image.network(
                    'https://c.tenor.com/2dPVmgfgjb0AAAAC/joker-tus-nalgas.gif',
                    height: 250),
                const Text('y aqui arriba pos hay algo que si me gustaaaaa')
              ]),
        ),
      ),
    );
  }
}
