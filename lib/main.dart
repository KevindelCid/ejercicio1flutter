import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String texto = "Esto esta hecho con statefulWidget";
  int cont = 0;
  double progressIndicator = 0.0;
  bool switchVal = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("$texto $cont segundos"),
            LinearProgressIndicator(
              value: progressIndicator,
            ),
            Switch(
              value: switchVal,
              onChanged: (value) {
                setState(() {
                  switchVal = value;
                });
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeText,
        child: const Icon(Icons.change_circle),
      ),
    );
  }

  void contador() {
    setState(() {
      cont += 1;
      progressIndicator += 0.01;
    });
  }

  void changeText() {
    setState(() {
      if (texto == "Mandy muse tiene el mejor culo del porno") {
        texto = "Jewelz blu tiene unas tetas hermosas";
      } else {
        texto = "Mandy muse tiene el mejor culo del porno";
      }
    });
  }

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(milliseconds: 1000), (value) {
      contador();
      changeText();
    });
  }

  @override
  void dispose() {
    super.dispose();
  }
}
