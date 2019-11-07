import 'package:flutter/material.dart';

import 'game.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Snake',
        debugShowCheckedModeBanner: false,
        home: new Home(),
        theme: ThemeData(fontFamily: 'Pixel Emulator'));
  }
}

class Home extends StatefulWidget {

  static int level = 1;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {

    return new Scaffold(
        backgroundColor: Color(0xFFecc073),
        body: Stack(children: <Widget>[

          Positioned(
            child: Container(
                height: 50.0,
                width: 300.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white.withOpacity(0.6),

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Level: " + Home.level.toString(),
                        style: TextStyle(
                          color: Colors.blueGrey.withOpacity(0.8),
                          fontWeight: FontWeight.w500,
                          fontSize: 28.0,
                        )),
                  ],
                )),
            top: 100.0,
            left: 50.0,
          ),
          new Center(
            child: new Game(),
          ),
        ]));
  }
}
