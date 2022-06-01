import 'package:ejemplo1/pages/my_homePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: MyApp(),
  ));
}

<<<<<<< HEAD
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(), //apBar me muestra lo que en web se conoce como navbar
        body: const Center(
          child: Text(
            'Mundo! Holis :D', // muestro texto parametro obligatorio de Text
            style: TextStyle(
              // estilos para el texto es opcional
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ), // puedo mostrar texto ...
        ));
  }
}
=======
>>>>>>> 2780e9b278d102bd9e83a46eaf14cb668949d809
