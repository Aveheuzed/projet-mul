import 'package:flutter/material.dart';
import 'package:testappmult/Home.dart';
import 'package:testappmult/Menu.dart';
import 'package:testappmult/Exercices/ExerciceLibres.dart';
import 'file:///C:/Users/julie/AndroidStudioProjects/projet-mul/lib/Exercices/Exercice1.dart';
import 'file:///C:/Users/julie/AndroidStudioProjects/projet-mul/lib/Exercices/Exercice1Correction.dart';


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
      case '/Exercice1':
        return  MaterialPageRoute(builder: (content)=>Exercice1());
      case '/Exercice1_Correction' :
        return  MaterialPageRoute(builder: (content)=>Exercice1Correction());
  }
    return  MaterialPageRoute(builder: (content)=>Menu());
  }
}