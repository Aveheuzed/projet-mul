import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'generateurRoute.dart';
void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your 2application.
  @override
  Widget build(BuildContext context) {
 SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Segoe UI",
        primaryColor: Color(0xFF2c2d42),
        accentColor: Color(0xFF2c2d42),
      ),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/exerciceslibres',
      onGenerateRoute: GenerateurRoute.generateRoute ,
    );
  }
}





