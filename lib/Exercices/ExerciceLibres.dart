import 'package:flutter/material.dart';
import 'package:testappmult/Exercices/Exercice1.dart';
import 'package:testappmult/Exercices/Exercice2.dart';
import 'package:testappmult/Styles.dart';

class ExercicesLibres extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ExercicesLibres();
  }
}

class _ExercicesLibres extends State<ExercicesLibres>{


  @override
  Widget build(BuildContext context) {
    return StructPage(
      child: ListView( // permet le scroll vertical
        shrinkWrap: true,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom:50, top:50),
                child: Text("Exercices libres", textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF323347),
                    fontSize: 30,
                    fontWeight: FontWeight.w800
                  ),),
              ),
              Column(
                children: <Widget>[
                  Depliant(
                    titre: 'Double et moitié',
                    options: <Widget>[
                      DepliantBouton(
                        "Niveau 1",
                        onPressed: (){Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Exercice1(niveau: 1,)),
                        );},
                      ),
                      DepliantBouton(
                        "Niveau 2",
                        onPressed: (){Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Exercice1(niveau: 2,)),
                        );},
                      ),
                      DepliantBouton(
                        "Niveau 3",
                        onPressed: (){Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Exercice1(niveau: 3,)),
                        );},
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Depliant(
                    titre: 'Multiplier et diviser',
                    options: <Widget>[
                      DepliantBouton(
                        "Niveau 1",
                          onPressed: (){Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Exercice2(niveau: 1,)),
                          );},
                      ),
                      DepliantBouton(
                        "Niveau 2",
                          onPressed: (){Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Exercice2(niveau: 1,)),
                          );},
                      ),
                      DepliantBouton(
                        "Niveau 3",
                        onPressed: (){Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Exercice2(niveau: 1,)),
                        );},
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Depliant(
                    titre: 'Trouver les multiples',
                    options: <Widget>[
                      DepliantBouton(
                        "Niveau 1",
                        onPressed: (){},
                      ),
                      DepliantBouton(
                        "Niveau 2",
                        onPressed: (){},
                      ),
                      DepliantBouton(
                        "Niveau 3",
                        onPressed: (){},
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Depliant(
                    titre: 'Tables d\'addition',
                    options: <Widget>[
                      DepliantBouton(
                        "Niveau 1",
                        onPressed: (){},
                      ),
                      DepliantBouton(
                        "Niveau 2",
                        onPressed: (){},
                      ),
                      DepliantBouton(
                        "Niveau 3",
                        onPressed: (){},
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Depliant(
                    titre: 'Tables de multiplication',
                    options: <Widget>[
                      DepliantBouton(
                        "Niveau 1",
                        onPressed: (){},
                      ),
                      DepliantBouton(
                        "Niveau 2",
                        onPressed: (){},
                      ),
                      DepliantBouton(
                        "Niveau 3",
                        onPressed: (){},
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Depliant(
                    titre: 'Additions à trou',
                    options: <Widget>[
                      DepliantBouton(
                        "Niveau 1",
                        onPressed: (){},
                      ),
                      DepliantBouton(
                        "Niveau 2",
                        onPressed: (){},
                      ),
                      DepliantBouton(
                        "Niveau 3",
                        onPressed: (){},
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Depliant(
                    titre: 'Multiplications à trou',
                    options: <Widget>[
                      DepliantBouton(
                        "Niveau 1",
                        onPressed: (){},
                      ),
                      DepliantBouton(
                        "Niveau 2",
                        onPressed: (){},
                      ),
                      DepliantBouton(
                        "Niveau 3",
                        onPressed: (){},
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 50.0,
              )
            ],
          )
        ],
      )
    );
  }


}

