import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
            // child: Image.network(
            //   'https://steamuserimages-a.akamaihd.net/ugc/1689400601813337329/77493C8B648A8DCDE0A7FF49EE4E492A8D79E692/?imw=512&&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=false',
            //   height: 700,
            //   //aqui podria ponerle un fit: BoxFit.cover; fil ... y usar el width:
            // ),

            child: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            print('holiiiis');
          },
        )),
      ),
    );
  }
}
