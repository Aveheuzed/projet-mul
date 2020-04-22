import 'package:flutter/material.dart';
import 'package:testappmult/Home.dart';
import 'package:testappmult/Theme.dart';


void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Mon App",
      theme: MyTheme.defaultTheme,
      debugShowCheckedModeBanner: false,
      home: new Home(),
    );
  }
}