import 'package:flutter/material.dart';
import './basic.dart';

void main() {
  syntaxSugar(null);
  var multiplyBy10 = multiplier(by: 10);
  print('[multiplier] 3 * 10 = ${multiplyBy10(3)}');

  Dog firstDog = Animal.factory(name: 'Bob', type: 'dog') as Dog;
  firstDog
    ..favoriteBone = 'super bone'
    ..color = Color.fromRGBO(0, 0, 0, 1);

  print(firstDog);
  firstDog.play();

  BlackCat blackCat = Animal.factory(name: 'Neko', type: 'black cat') as BlackCat;
  print(blackCat);

  assert(blackCat.name == 'Neko', 'Cat\'s name should be \'Neko\'');

  // collections
  const LIMIT = 10;
  var numbers = [for(var i = 0; i < LIMIT; i++) i * i];
  print(numbers);

  assert(numbers.length == LIMIT, 'numbers shoul have length of $LIMIT}');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TI-81 Afendikov Denys Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'TI-81 Afendikov Denys Flutter Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
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
    var sumator = new BasicClass(a: _counter, b: 2);
    print(sumator);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              '+ 2:',
            ),
            Text(
              '${sumator.sum}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
