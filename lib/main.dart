import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan text Style"),
        ),
        body: Center(
          child: Text(
            "Ini adalah Text",
            style: TextStyle(
                fontFamily: "Roboto",
                fontStyle: FontStyle.normal,
                fontSize: 30,
                decoration: TextDecoration.overline,
                decorationColor: Colors.green,
                decorationThickness: 5,
                decorationStyle: TextDecorationStyle.wavy),
          ),
        ),
      ),
    );
  }
}
