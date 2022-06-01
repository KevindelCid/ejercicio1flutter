import 'package:ejemplo1/pages/pagina3.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key, required this.name, required this.pass})
      : super(key: key);

  final String name;
  final String pass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pass),
      ),
      body: Column(
        children: [
          Center(
            child: RaisedButton(
              onPressed: () {
                // Navigator.pop(context);

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageTre(name: name)),
                );
              },
              child: Text('Listo, vamos a la siguiente Pagina!'),
            ),
          ),
          Text("este es el nombre: $name y esta la contra: $pass"),
        ],
      ),
    );
  }
}
