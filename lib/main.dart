import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
                icon: const Icon(Icons.add), iconSize: 25, onPressed: _add)
          ],
       
         
              // IconButton(icon: const Icon(Icons.back_hand), onPressed: _add),
         
          title: const Text('Usando gestos en Flutter'),
          
        ),
        body:  Column(
          
          children:  <Widget> [
            
            const Center(
                child: Text('Hello World'),
               
              
               
              
             
            ),
             const Center(child:  Text(' Mami Miu siendo mami Miu')),
            
                            GestureDetector(
                              onTap: _onTap,
                              onLongPress: _oLP,
                              child: Image.network('https://64.media.tumblr.com/a923575a7afd997eab623b10bd5afa5e/1ffdae95190517bc-b6/s500x750/ffb61eef47b48bc5bdfc3e2eae70ce45bef7497c.gif', height: 200,))

          ],
        ),
         drawer: Drawer(),
      ),
    );
  }

  void _add() {



    print('Holi');
  }




  void _onTap() {

print('ay que rico!');

  }

  void _oLP() {
    print('OOOOOH, SIIIIIIII!!!');
  }
}