import 'package:flutter/material.dart';
import 'package:testappmult/Home.dart';
import 'package:testappmult/Theme.dart';
import 'package:flutter/services.dart';
import 'generateurRoute.dart';


void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([ //forcer le mode portrait
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return new MaterialApp(
      title: "Mon App",
      theme: MyTheme.defaultTheme,
      debugShowCheckedModeBanner: false,
      home: new Home(),
      onGenerateRoute: GenerateurRoute.generateRoute ,
    );
  }
}
