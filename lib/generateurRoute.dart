import 'package:flutter/material.dart';
import 'package:multiplication/reglages.dart';
import 'exercicesLibresPage.dart';
import 'login.dart';
import 'page2.dart';
class GenerateurRoute{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args =settings.arguments;
    switch(settings.name){
      case '/login' :
       return MaterialPageRoute(builder: (content)=>LoginScreen());
      case '/page2' :
        return MaterialPageRoute(builder: (content)=>Page2Screen());
      case '/exerciceslibres':
         return  MaterialPageRoute(builder: (content)=>ExercicesLibres());

  }
}
}