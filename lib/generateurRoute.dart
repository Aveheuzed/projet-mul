import 'package:flutter/material.dart';
import 'package:multiplication/Resultat.dart';
import 'package:multiplication/exercice3correction.dart';
import 'exercice3.dart';
import 'exercice4.dart';
import 'exercice4Correction.dart';
import 'exercice5.dart';
import 'exercice5Correction.dart';
import 'exercicesLibresPage.dart';
import 'login.dart';
import 'page2.dart';
class Arguments {
  final int nombre;
  final String operation;
 final List reponse;
 int score;
 final int num;
  Arguments(this.nombre, this.operation,this.reponse,this.score,this.num);
}

class GenerateurRoute {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final Arguments args = settings.arguments;
    /* case '/login' :
       return MaterialPageRoute(builder: (content)=>LoginScreen());
      case '/page2' :
        return MaterialPageRoute(builder: (content)=>Page2Screen());*/
    if (settings.name == '/exerciceslibres')
      return MaterialPageRoute(builder: (content) => ExercicesLibres());


    if (settings.name == '/exercice3') {
        return MaterialPageRoute(builder: (content) =>
            Exercice3(nombre: args.nombre, operation: args.operation));
    }
    if (settings.name == '/exercice3correction') {
        return MaterialPageRoute(builder: (content) =>
            Exercice3Correction(nombre: args.nombre,
              operation: args.operation,
              reponse: args.reponse,score: args.score,));
    }
    if (settings.name == '/exercice4') {
      return MaterialPageRoute(builder: (content) =>
          Exercice4(nombre: args.nombre,
              operation: args.operation,score:args.score,num:args.num));
    }
    if (settings.name == '/exercice4correction') {
      return MaterialPageRoute(builder: (content) =>
          Exercice4Correction(nombre: args.nombre,
              operation: args.operation,
              compteur: args.reponse,score: args.score,num:args.num));
    }
    if (settings.name == '/exercice5') {
      return MaterialPageRoute(builder: (content) =>
          Exercice5(nombre: args.nombre,
              operation: args.operation,score:args.score,num:args.num));
    }
    if (settings.name == '/exercice5correction') {
      return MaterialPageRoute(builder: (content) =>
          Exercice5Correction(nombre: args.nombre,
              operation: args.operation,
              compteur: args.reponse,score: args.score,num:args.num));
    }
    if (settings.name == '/Resultat') {
      return MaterialPageRoute(builder: (content) =>
         Resultat(score: args.score,));
    }
  }
}


