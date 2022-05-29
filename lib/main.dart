import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: listAssets());
  }
}

class listAssets extends StatelessWidget {
  listAssets({Key? key}) : super(key: key);
  List<String> imgs = [
    'f1',
    'f2',
    'f3',
    'f4',
    'f5',
    'f6',
    'f7',
    'f8',
    'f9',
    'f10',
    'f11'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Usando assets'),
      ),
      body: ListView.builder(
        itemCount: imgs.length,
        itemBuilder: (BuildContext context, int index) {
          final img = imgs[index];
          return ListTile(
              title: Image.asset('assets/fotos/$img.jpg', height: 200),
              leading: const Icon(Icons.photo));

          // Card(child: Text(name));
        },
      ),
    );
  }
}
