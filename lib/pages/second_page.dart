import 'package:ejemplo1/pages/pagina3.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key, required this.name}) : super(key: key);


final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hola $name"),
      ),
      body: Center(
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
    );
  }
}