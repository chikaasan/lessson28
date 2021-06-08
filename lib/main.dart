
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyMainPage(),

    );
  }
}

class MyMainPage extends StatefulWidget {
  const MyMainPage({Key key}) : super(key: key);
  
  _MyMainPageState createState() => _MyMainPageState(); 
}

class _MyMainPageState extends State<MyMainPage> {
  double _height = 50;
  double _width = 50;
  Color _color = Colors.blue;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(25);

  _random() {
    setState(() {
      _width = Random().nextInt(300).toDouble();
      _height = Random().nextInt(300).toDouble();

      _color = Color.fromRGBO(
        Random().nextInt(256),
        Random().nextInt(256), 
        Random().nextInt(256), 
        1
        );

      _borderRadius = BorderRadius.circular(Random().nextInt(100).toDouble());
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyHomePage"),
      ),
      body: Center(
        child: AnimatedContainer(
          height: _height,
          width: _width,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _random,
        child: Icon(Icons.play_circle_fill),
      ),
    );
  }

}