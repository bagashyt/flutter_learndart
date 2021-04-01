import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color color1 = Colors.red;
  Color color2 = Colors.amber;
  Color targetColor;
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan  Draggable"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Draggable<Color>(
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color1,
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.grey,
                      shape: StadiumBorder(),
                    ),
                  ),
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color1.withOpacity(0.7),
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                ),
                Draggable<Color>(
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color2,
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.grey,
                      shape: StadiumBorder(),
                    ),
                  ),
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color2.withOpacity(0.7),
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                ),
              ],
            ),
            DragTarget(
                onWillAccept: (value) => true,
                onAccept: (value) {
                  isAccepted = true;
                  targetColor = value;
                },
                builder: (context, candidate, rejected){
                  (isAccepted) ?
                })
          ],
        ),
      ),
    );
  }
}
