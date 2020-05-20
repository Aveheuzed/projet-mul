import 'package:flutter/material.dart';
import 'package:multiplication/exercice2correction.dart';

import 'exercice1.dart';
import 'exercice2.dart';
import 'exercicesLibresPage.dart';
import 'login.dart';
import 'page2.dart';
class Arguments {
  final int nombre;
  final String operation;
 final List reponse;

  Arguments(this.nombre, this.operation,this.reponse);
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


    if (settings.name == '/exercice2') {
        return MaterialPageRoute(builder: (content) =>
            Exercice2(nombre: args.nombre, operation: args.operation));
    }
    if (settings.name == '/exercice2correction') {
        return MaterialPageRoute(builder: (content) =>
            Exercice2Correction(nombre: args.nombre,
              operation: args.operation,
              reponse: args.reponse));
    }
  }
}
