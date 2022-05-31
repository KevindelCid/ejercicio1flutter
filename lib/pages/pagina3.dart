import 'package:flutter/material.dart';

class PageTre extends StatelessWidget {
  const PageTre({Key? key, required this.name}) : super(key: key);


final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hola $name"),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go back!'),
            ),
            Text('Hola, bienvenido a la pagina numero 3 en esta pagina ya sabemos que el nombre que se ha mandado es: $name'),
          ],
        ),
      ),
    );
  }
}