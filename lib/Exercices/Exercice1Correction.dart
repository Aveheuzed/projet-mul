import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testappmult/Styles.dart';
import 'package:testappmult/Exercices/Exercice1.dart';
import 'package:testappmult/Resultat.dart';

class Exercice1Correction extends StatelessWidget{
  final int nombre;
  final int reponse;
  final bool type;//true: double |false: moitié
  final int niveau;
  final bool success;
  final int num;
  final int score;

  Exercice1Correction({this.niveau, this.type, this.nombre, this.reponse, this.success = false, this.num, this.score}): super();

  @override
  Widget build(BuildContext context) {
    String question;
    String titre;
    int color;
    if(type){
      question= nombre.toString() + " X 2";
      titre = "Double";
    }
    else{
      question= nombre.toString() + " / 2";
      titre = "Moitié";
    }
    if (success) color = 0xFF0CCC06;
    else color = 0xFFFF0000;
    return WillPopScope(
      onWillPop: () async => false,// empèche le retour
      child: StructPage(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height-100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      num.toString() + "/10\n" +"Niveau " + niveau.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xFF323347),
                          fontSize: 30,
                          fontWeight: FontWeight.w800
                      ),
                    ),
                    SizedBox(height: 40),
                    Container(
                      padding: EdgeInsets.only(bottom:20),
                      child: Text(
                        question,
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Color(0xff323347),
                          fontSize: 80,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom:20),
                      child: Text(
                        "=",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Color(0xff323347),
                          fontSize: 80,
                        ),
                      ),
                    ),
                    FlatButton(
                        onPressed: (){
                            if(!success){
                              Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => E1Correction(niveau: niveau, type: type, nombre: nombre, success: true, num: num, score: score))
                              );
                            }else{
                              if(num == 10){
                                Navigator.of(context).pushNamed('/ExercicesLibres');
                              }else {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Exercice1(niveau: niveau,num: num+1, score: score))
                                );
                              }
                            }
                          },
                        child: ChampReponseCorrection(
                          titre: titre,
                          reponse: reponse,
                          color: color,
                        ),
                    ),
                    SizedBox(height: 40),
                    Bouton("Suivant", onPressed: (){
                      if(num == 10){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Resultat(score: score))
                        );
                      }else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Exercice1(niveau: niveau, num: num+1, score: score))
                        );
                      }
                    }
                    ),
                  ]
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}

class E1Correction extends StatelessWidget{
  final int nombre;
  final bool type;//true: double |false: moitié
  final int niveau;
  final bool success;
  final int num;
  final int score;

  E1Correction({this.niveau, this.type, this.nombre, this.success = false, this.num, this.score}): super();

  @override
  Widget build(BuildContext context) {
    String question;
    String titre;
    int reponse;
    if(type){
      question= nombre.toString() + " X 2";
      titre = "Double";
      reponse = nombre *2;
    }
    else{
      question= nombre.toString() + " / 2";
      titre = "Moitié";
      reponse = (nombre / 2).round();
    }
    return WillPopScope(
      onWillPop: () async => false,// empèche le retour
      child: StructPage(
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height-100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Niveau " + niveau.toString() +"\nCorrection" ,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xFF323347),
                              fontSize: 30,
                              fontWeight: FontWeight.w800
                          ),
                        ),
                        SizedBox(height: 40),
                        Container(
                          padding: EdgeInsets.only(bottom:20),
                          child: Text(
                            question,
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Color(0xff323347),
                              fontSize: 80,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom:20),
                          child: Text(
                            "=",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Color(0xff323347),
                              fontSize: 80,
                            ),
                          ),
                        ),
                        FlatButton(
                          onPressed: (){print("correction");},
                          child: ChampReponseCorrection(
                            titre: titre,
                            reponse: reponse,
                          ),
                        ),
                        SizedBox(height: 40),
                        Bouton("Suivant", onPressed: (){
                          if(num == 10){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Resultat(score: score))
                            );
                          }else {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Exercice1(niveau: niveau, num: num+1, score: score))
                            );
                          }
                        }
                        ),
                      ]
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}