import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KOE Pai',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'KOE Pai'),
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
  String _k = " ";
  String _o = " ";
  String _e = " ";
  String _kv = " ";
  String _ev = " ";

  void _setKOE() {
    if (_kv == 'K')
      setState(() {
        _k = "K";
        _o = "O";
        _e = "E";
        _kv = " ";
        _ev = " ";
      });
    else
      setState(() {
        _k = " ";
        _o = "O";
        _e = " ";
        _kv = "K";
        _ev = "E";
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_kv',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 150.0,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '$_k ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 150.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '$_o',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 150.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  ' $_e',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 150.0,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text(
              '$_ev',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 150.0,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _setKOE,
        child: Icon(
          Icons.message,
          color: Colors.black,
        ),
        backgroundColor: Colors.red,
      ),
    );
  }
}
