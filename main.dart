import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multiplication/page2.dart';
import 'login.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Page2Screen(),
    );
  }
}




