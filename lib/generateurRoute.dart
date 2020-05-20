import 'package:flutter/material.dart';

import 'exercice1.dart';
import 'exercice2.dart';
import 'exercicesLibresPage.dart';
import 'login.dart';
import 'page2.dart';
class GenerateurRoute{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args =settings.arguments;


     /* case '/login' :
       return MaterialPageRoute(builder: (content)=>LoginScreen());
      case '/page2' :
        return MaterialPageRoute(builder: (content)=>Page2Screen());*/
      if(settings.name=='/exerciceslibres')
         return  MaterialPageRoute(builder: (content)=>ExercicesLibres());
        if(settings.name=='/exercice1')
        if (args is int)
   return  MaterialPageRoute(builder: (content)=>Exercice1(niveau:args));

        if(settings.name=='/exercice2'){
        if (args is int)
          return  MaterialPageRoute(builder: (content)=>Exercice2(nombre:args));
  }
  }
}
