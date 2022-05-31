// ignore_for_file: deprecated_member_use

import 'package:ejemplo1/pages/second_page.dart';
import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  String name = "kevin";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: GestureDetector(
          onLongPress:  () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage(name: name)),
            );
          },
          child:   RaisedButton(
          child: Text('Open route'),
          
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage(name: name)),
            );
          },
        ),
        )
      ),
    );
  }
}
