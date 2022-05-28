import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Scaffold'),
          ),
          body: const Center(),
          floatingActionButton: FloatingActionButton(
              onPressed: () {
                print('add');
              },
              child: const Icon(Icons.add)),
          drawer: Drawer(),
          endDrawer: Drawer(),
          backgroundColor: Color.fromARGB(255, 41, 41, 41)),
    );
  }
}
