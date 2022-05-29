import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 41, 41, 41),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 31, 31, 31),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.elliptical(10, 10))),
          title: const Text('Uso del AppBar'),
          actions: <Widget>[
            IconButton(
                icon: const Icon(Icons.add), iconSize: 25, onPressed: _add)
          ],
          leading:
              IconButton(icon: const Icon(Icons.back_hand), onPressed: _add),
        ),
        body: const Center(),
      ),
    );
  }

  void _add() {
    // ignore: avoid_print
    print('holis');
  }
}
