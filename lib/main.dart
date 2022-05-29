import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  // necesito crear dos filas donde aparezcan 2 tarjetas con datos
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tajetas con columns y Rows'),
        ),
        body: Column(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(children: <Widget>[
                Image.network(
                    'https://thumb-p0.xhcdn.com/a/2faOelxwBvId33kgs9a2pw/000/419/753/940_1000.gif',
                    height: 100,
                    width: 150),
                const SizedBox(
                  width: 150.0,
                  child: AutoSizeText(
                    'petite, morenita rica follada',
                    style: TextStyle(fontSize: 12.0),
                    maxLines: 3,
                  ),
                ),
              ]),
              Column(children: <Widget>[
                Image.network(
                    'https://static-ca-cdn.eporner.com/gallery/pT/LQ/mi9aGzWLQpT/93932-jillian-janson-anal.gif',
                    height: 100,
                    width: 150),
                const SizedBox(
                  width: 150.0,
                  child: AutoSizeText(
                    'tremendo anal a la mami jillian janson, me encanta ese culo hermoso',
                    style: TextStyle(fontSize: 12.0),
                    maxLines: 3,
                  ),
                ),
              ]),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(children: <Widget>[
                Image.network(
                    'http://ist5-1.filesor.com/pimpandhost.com/1/4/6/0/146081/6/q/1/F/6q1FD/Mandy%20Muse%20-%2003.gif',
                    height: 100,
                    width: 150),
                const SizedBox(
                  width: 150.0,
                  child: AutoSizeText(
                    'Anal al hermoso culazo de mandy muse, qué rico!',
                    style: TextStyle(fontSize: 12.0),
                    maxLines: 3,
                  ),
                ),
              ]),
              Column(children: <Widget>[
                Image.network(
                    'https://realbooru.com//images/6b/07/6b07268a161bf8257c32e03746c91141.gif',
                    height: 100,
                    width: 150),
                const SizedBox(
                  width: 150.0,
                  child: AutoSizeText(
                    'Qué envidia me da ese negro! me encanta jewelz blu ',
                    style: TextStyle(fontSize: 12.0),
                    maxLines: 3,
                  ),
                ),
              ]),
            ],
          ),
        ]),
      ),
    );
  }
}
