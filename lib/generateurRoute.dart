import 'package:flutter/material.dart';
import 'package:testappmult/Home.dart';
import 'package:testappmult/Menu.dart';
import 'package:testappmult/Exercices/ExerciceLibres.dart';
import 'package:testappmult/Exercices/Exercice1.dart';
import 'package:testappmult/Exercices/Exercice1Correction.dart';

import 'package:testappmult/Resultat.dart';
import 'package:testappmult/Exercices/exercice3correction.dart';
import 'package:testappmult/Exercices/exercice3.dart';
import 'package:testappmult/Exercices/exercice4.dart';
import 'package:testappmult/Exercices/exercice4Correction.dart';
import 'package:testappmult/Exercices/exercice5.dart';
import 'package:testappmult/Exercices/exercice5Correction.dart';


class Arguments {
  final int nombre;
  final String operation;
  final List reponse;
  int score;
  final int num;
  Arguments(this.nombre, this.operation,this.reponse,this.score,this.num);
}

class GenerateurRoute{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final Arguments args = settings.arguments;
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
      case '/Exercice1_Correction':
        return  MaterialPageRoute(builder: (content)=>Exercice1Correction());
      case '/exercice3':
        return MaterialPageRoute(builder: (content) => Exercice3(nombre: args.nombre, operation: args.operation));
      case '/exercice3correction':
        return MaterialPageRoute(builder: (content) =>
            Exercice3Correction(nombre: args.nombre,
              operation: args.operation,
              reponse: args.reponse,score: args.score,));
      case '/exercice4':
        return MaterialPageRoute(builder: (content) =>
            Exercice4(nombre: args.nombre,
                operation: args.operation,score:args.score,num:args.num));
      case '/exercice4correction' :
        return MaterialPageRoute(builder: (content) =>
            Exercice4Correction(nombre: args.nombre,
                operation: args.operation,
                compteur: args.reponse,score: args.score,num:args.num));
      case '/exercice5' :
        return MaterialPageRoute(builder: (content) =>
            Exercice5(nombre: args.nombre,
                operation: args.operation,score:args.score,num:args.num));
      case '/exercice5correction':
        return MaterialPageRoute(builder: (content) =>
            Exercice5Correction(nombre: args.nombre,
                operation: args.operation,
                compteur: args.reponse,score: args.score,num:args.num));
      case '/Resultat':
        return MaterialPageRoute(builder: (content) =>
            Resultat(score: args.score,));

    }
    return  MaterialPageRoute(builder: (content)=>Menu());
  }
}