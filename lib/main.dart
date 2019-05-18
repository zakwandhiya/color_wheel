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

  
  List<Color> color = <Color>[
    Colors.lightBlue[600],
    Colors.indigoAccent,
    Color(0xff651fff), //contoh color menggunakan hexadecimal
    Colors.purpleAccent,
    Colors.pinkAccent[400]
  ];


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

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: color[_counter],
      ),
      body: Container(
        child :Center(
          child: Container(
            width: 400,
            height: 600,
            child :GestureDetector(           //gestur detector => widget yg bisa menerima input gesture dari user
              child: Card(                      
                color: color[_counter],
                child: Center(
                  child: 
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon( 
                        Icons.touch_app,
                        color : Colors.white,
                        size: 56,
                      ),
                      SizedBox(height: 24,),
                      Text(
                        "Tap untuk merubah warna",
                        style: TextStyle(color: Colors.white ,fontSize: 18),
                      ),
                    ],
                  )
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
