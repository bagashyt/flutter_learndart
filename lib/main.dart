import 'package:flutter/material.dart';
import 'package:flutter_learndart/post_result_model.dart';
import 'package:flutter_learndart/user_model.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String output = "no data";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan API"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(output),
              RaisedButton(
                onPressed: () {
                  User.getUsers("2").then((users) {
                    output = "";
                    for (int i = 0; i < users.length; i++)
                      output = output + "[ " + users[i].name + " ]";
                    setState(() {});
                  });
                },
                child: Text("GET"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
