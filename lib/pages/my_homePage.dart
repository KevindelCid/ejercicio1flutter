// ignore_for_file: deprecated_member_use

import 'package:ejemplo1/pages/second_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String name = "kevin";

  late TextEditingController nameTextController;

  late TextEditingController passTextController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration:
                  const InputDecoration(labelText: 'Ingrese su usuario'),
              controller: nameTextController,
            ),
            TextField(
              decoration:
                  const InputDecoration(labelText: 'Ingrese su contraseña'),
              controller: passTextController,
            ),
            RaisedButton(
              child: const Text('Enviar datos'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SecondPage(
                          name: nameTextController.text.toString(),
                          pass: passTextController.text.toString())),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    nameTextController = TextEditingController();

    passTextController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    nameTextController.dispose();
    passTextController.dispose();
  }
}
