import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Learn TextField"),
        ),
        body: Container(
          margin: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.print),
                  prefixIcon: Icon(Icons.account_box),
                  prefixText: "Name: ",
                  labelText: "Nama Lengkap",
                  hintText: "Di isi dengan nama lengkap",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                onChanged: (value) {
                  setState(() {});
                },
                controller: controller,
              ),
              Text(controller.text)
            ],
          ),
        ),
      ),
    );
  }
}
