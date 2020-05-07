import 'package:flutter/material.dart';
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
      child: ListView( //// permet le scroll vertical
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
                        onPressed: (){Navigator.of(context).pushNamed('/Exercice1');},
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
                    titre: 'Double et moitié',
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
                    titre: 'Double et moitié',
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
                    titre: 'Double et moitié',
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
                    titre: 'Double et moitié',
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

