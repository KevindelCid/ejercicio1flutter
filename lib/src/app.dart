// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyApp extends StatelessWidget {
  final _scaffKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        key: _scaffKey,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(0, 3, 36, 4),
          title: Row(
            children: <Widget>[
              SvgPicture.asset(
                'assets/kiwi.svg',
                placeholderBuilder: (context) =>
                    const CircularProgressIndicator(),
                height: 40.0,
              ),
             const Padding(
                padding:  EdgeInsets.all(10.0),
                child:  Text('Lusyc'),
              )
            ],
          ),
          elevation: 0,
        ),
        body: const Center(
          child: Text('Hello World',
              style: TextStyle(color: Color.fromARGB(255, 200, 206, 201))),
        ),
        drawer: _getDrawer(context),
        backgroundColor: const Color.fromARGB(255, 52, 54, 52),
      ),
    );
  }

  Widget _getDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 3, 36, 4),
            ),
            accountName: const Text('kevin'),
            accountEmail: const Text('kevin@gmail.com'),
            currentAccountPicture:
                foto_circular('https://i.imgur.com/BoN9kdC.png'),
            otherAccountsPictures: [
                SvgPicture.asset(
                'assets/kiwi.svg',
                placeholderBuilder: (context) =>
                    const CircularProgressIndicator(),
                height: 40.0,
              ),
            ],
            onDetailsPressed: () {},
          ),
          ListTile(
            title: const Text('Inicio'),
            leading: const Icon(Icons.home),
            onTap: () => showHome(context),
          ),
        ],
      ),
    );
  }

  Widget foto_circular(url) {
    return Container(
        width: 190.0,
        height: 190.0,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image:
                DecorationImage(fit: BoxFit.fill, image: NetworkImage(url))));
  }

  void showHome(BuildContext context) {}
}
