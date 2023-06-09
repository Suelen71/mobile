import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required String title}): _title = title, super(key: key);

  final String _title;

  get name => _title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    //metodo bild responsavel por fazer desenho na tela
    return Scaffold(
      appBar: AppBar(
        leading: const Text("Suelen"),
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(widget.name),
      ),
      body: Center( 
        child: Column( //adicionar um elemeto abaixo do outro - row horizontal, column vertical
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Texto'),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
