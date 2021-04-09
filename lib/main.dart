import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController(text: "No name");
  bool isOn = false;

  void saveData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("nama", controller.text);
    pref.setBool("ison", isOn);
  }

  Future<String> getNama() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString("nama") ?? "No Name";
  }

  Future<bool> getOn() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool("ison") ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Shared preferences"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TextField(
                controller: controller,
              ),
              Switch(
                  value: isOn,
                  onChanged: (newValue) {
                    setState(() {
                      isOn = newValue;
                    });
                  }),
              RaisedButton(
                  child: Text("Save"),
                  onPressed: () {
                    saveData();
                  }),
              RaisedButton(
                  child: Text("Load"),
                  onPressed: () {
                    getNama().then((s) {
                      controller.text = s;
                      setState(() {});
                      getOn().then((b) {
                        isOn = b;
                        setState(() {});
                      });
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
