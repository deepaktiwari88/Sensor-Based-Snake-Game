import 'package:flutter/material.dart';
import 'game.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Snake',
      debugShowCheckedModeBanner: false,
      home: new Home(),
        theme: ThemeData(fontFamily: 'Pixel Emulator')
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
        backgroundColor: Color(0xFFecc073),
        body: new Center(
          child: new Game(),
        )
        );
  }
}
