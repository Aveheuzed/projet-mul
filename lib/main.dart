import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'generateurRoute.dart';
//import 'package:device_preview/device_preview.dart';
void main() => runApp(MyApp());
   /* DevicePreview(
    builder: (context) => MyApp()
  ),
);*/
class MyApp extends StatelessWidget {
  // This widget is the root of your 2application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([ //forcer le mode portrait 
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      //builder: DevicePreview.appBuilder,
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





