import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testappmult/Styles.dart';
import 'package:testappmult/Exercices/Exercice2.dart';
import 'package:testappmult/Resultat.dart';

class Exercice2Correction extends StatelessWidget{
  final double n1;
  final int  n2;
  final int reponse;
  final bool type;//true: multiplier |false: diviser
  final int niveau;
  final bool success;
  final int num;
  final int score;

  Exercice2Correction({this.niveau, this.type, this.n1, this.n2, this.reponse, this.success = false, this.num, this.score}): super();

  @override
  Widget build(BuildContext context) {
    String question;
    int color;
    if(type){
      question= n1.toStringAsFixed(n1.truncateToDouble() == n1 ? 0 : 1) + " X " + n2.toString();
    }
    else{
      question= n1.toStringAsFixed(n1.truncateToDouble() == n1 ? 0 : 1) + " / " + n2.toString();
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
                              MaterialPageRoute(builder: (context) => E2Correction(niveau: niveau, type: type, n1:n1, n2:n2, success: true, num: num, score: score))
                              );
                            }else{
                              if(num == 10){
                                Navigator.of(context).pushNamed('/ExercicesLibres');
                              }else {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Exercice2(niveau: niveau,num: num+1, score: score))
                                );
                              }
                            }
                          },
                        child: ChampReponseCorrection(
                          reponse: reponse.toDouble(),
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
                            MaterialPageRoute(builder: (context) => Exercice2(niveau: niveau, num: num+1, score: score))
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

class E2Correction extends StatelessWidget{
  final double n1;
  final int n2;
  final bool type;//true: double |false: moitié
  final int niveau;
  final bool success;
  final int num;
  final int score;

  E2Correction({this.niveau, this.type, this.n1, this.n2, this.success = false, this.num, this.score}): super();

  @override
  Widget build(BuildContext context) {
    String question;
    String titre;
    double reponse;
    if(type){
      question= n1.toStringAsFixed(n1.truncateToDouble() == n1 ? 0 : 1) + " X " + n2.toString();
      reponse = n1 * n2;
    }
    else{
      question= n1.toStringAsFixed(n1.truncateToDouble() == n1 ? 0 : 1) + " / " + n2.toString();
      reponse = (n1 / n2);
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
                                MaterialPageRoute(builder: (context) => Exercice2(niveau: niveau, num: num+1, score: score))
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