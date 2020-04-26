import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool lights = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lights == true ? ThemeData.dark() : ThemeData.light(),
      home: buildTheme(),
    );
  }

  Widget buildTheme() {
    return Scaffold(
      appBar: AppBar(
        title: Text("Themes in Flutter"),
      ),
      body: Card(
        child: ListTile(
          title: Text("Dark Mode"),
          trailing: CupertinoSwitch(
            value: lights,
            onChanged: (bool value) {
              setState(() {
                print(lights);
                lights = value;
              });
            },
          ),
        ),
      ),
    );
  }
}
