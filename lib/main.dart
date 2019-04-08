import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //untuk menghapus label debug di appbar
      title: 'Simple State App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Simple State Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      if(_counter < 4){
        _counter++;
      } else {
        _counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Color color;
    switch(_counter){
      case 0 : color = Colors.blue[300];
      break;
      case 1 : color = Colors.blue[400];
      break;
      case 2 : color = Colors.blue[500];
      break;
      case 3 : color = Colors.blue[600];
      break;
      default : color = Colors.blue[700];
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child :Center(
          child: Container(
            width: 400,
            height: 600,
            child :GestureDetector(             //gestur detector => widget yg bisa menerima input gesture dari user
              child: Card(                      
                color: color,
                child: Center(
                  child: Text(
                    "Tap untuk merubah warna",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ),
              onTap: _incrementCounter,         //onTap => salah satu contoh atribut yg dimiliki gestur detector
            )
          )
        )
      )
    );
  }
}
