import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multiplication/page2.dart';
import 'generateurRoute.dart';
import 'login.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Segoe UI",
        primaryColor: Color(0xFF2c2d42),
        accentColor: Color(0xFF2c2d42),
      ),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      onGenerateRoute: GenerateurRoute.generateRoute ,
    );
  }
}





