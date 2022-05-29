import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  // necesito crear dos filas donde aparezcan 2 tarjetas con datos
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  List<String> names = [
    "Berenice",
    "Daniel",
    "Nawja",
    "Kevin",
    "Mandy",
    "Jewelz",
    "Daisy",
    "Fernanda"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Uso de ListView'),
        ),
        body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (BuildContext context, int index) {
            final name = names[index];
            return ListTile(
                title: Text(name), leading: const Icon(Icons.person));

            // Card(child: Text(name));
          },
        )

        // ListView(children: <Widget>[
        //   Column(
        //       crossAxisAlignment: CrossAxisAlignment.stretch,
        //       children: <Widget>[
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //           children: <Widget>[
        //             Column(children: <Widget>[
        //               Image.network(
        //                   'http://ist5-1.filesor.com/pimpandhost.com/1/4/6/0/146081/6/q/1/F/6q1FD/Mandy%20Muse%20-%2003.gif',
        //                   height: 100,
        //                   width: 150),
        //               const SizedBox(
        //                 width: 150.0,
        //                 child: AutoSizeText(
        //                   'Anal al hermoso culazo de mandy muse, qué rico!',
        //                   style: TextStyle(fontSize: 12.0),
        //                   maxLines: 3,
        //                 ),
        //               ),
        //             ]),
        //             Column(children: <Widget>[
        //               Image.network(
        //                   'https://i0.wp.com/lagacetauncut.com/medios/2020/05/jewelz-blu-nubiles-films-00.jpg?fit=768%2C432&ssl=1',
        //                   height: 100,
        //                   width: 150),
        //               const SizedBox(
        //                 width: 150.0,
        //                 child: AutoSizeText(
        //                   'jewelz blu ',
        //                   style: TextStyle(fontSize: 12.0),
        //                   maxLines: 3,
        //                 ),
        //               ),
        //             ]),
        //           ],
        //         ),
        //       ]),
        // ]),
        );
  }
}
