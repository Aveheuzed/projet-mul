import 'package:flutter/material.dart';
import 'package:testappmult/Home.dart';
import 'package:testappmult/Menu.dart';
import 'package:testappmult/ExerciceLibres.dart';
class GenerateurRoute{
  static Route<dynamic> generateRoute(RouteSettings settings){
   // final args =settings.arguments; // à quoi ça sert ?
    switch(settings.name){
      case '/Home' :
        return MaterialPageRoute(builder: (content)=>Home());
      case '/Menu' :
        return MaterialPageRoute(builder: (content)=>Menu());
      case '/ExercicesLibres':
        return  MaterialPageRoute(builder: (content)=>ExercicesLibres());

    }
  }
}