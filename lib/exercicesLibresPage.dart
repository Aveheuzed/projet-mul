
import 'package:flutter/material.dart';
import 'exercice1.dart';
import 'constantes.dart';

class ExercicesLibres extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ExercicesLibres();
  }
}

class _ExercicesLibres extends State<ExercicesLibres>{


  _ExercicesLibres();

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
                          onPressed: (){ Navigator.of(context).pushNamed('/exercice1',arguments: 1);},
                        ),
                        DepliantBouton(
                          "Niveau 2",
                          onPressed: (){ Navigator.of(context).pushNamed('/exercice1',arguments: 2);},
                        ),
                        DepliantBouton(
                          "Niveau 3",
                          onPressed: (){
                          Navigator.of(context).pushNamed('/exercice1',arguments: 3);},
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Depliant(
                      titre: 'Multiplier et diviser',
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
                      titre: 'Table d\'addition',
                      options: <Widget>[
                        DepliantBouton(
                          "Table 1",
                          onPressed: (){

                          },
                        ),
                        DepliantBouton(
                          "Table 2",
                          onPressed: (){

                          },
                        ),
                        DepliantBouton(
                          "Table 3",
                          onPressed: (){

                          },
                        ),
                        DepliantBouton(
                          "Table 4",
                          onPressed: (){},
                        ),
                        DepliantBouton(
                          "Table 5",
                          onPressed: (){},
                        ),
                        DepliantBouton(
                          "Table 6",
                          onPressed: (){},
                        ),
                        DepliantBouton(
                          "Table 7",
                          onPressed: (){},
                        ),
                        DepliantBouton(
                          "Table 8",
                          onPressed: (){},
                        ),
                        DepliantBouton(
                          "Table 9",
                          onPressed: (){},
                        ),
                        DepliantBouton(
                          "Table 10",
                          onPressed: (){},
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Depliant(
                      titre: 'Table de multiplication',
                      options: <Widget>[
                        DepliantBouton(
                          "Table 1 ",
                          onPressed: (){  Navigator.of(context).pushNamed('/exercice2',arguments: 1);},
                        ),
                        DepliantBouton(
                          "Table 2",
                          onPressed: (){ Navigator.of(context).pushNamed('/exercice2',arguments: 2);},
                        ),
                        DepliantBouton(
                          "Table 3",
                          onPressed: (){ Navigator.of(context).pushNamed('/exercice2',arguments: 3);},
                        ),
                        DepliantBouton(
                          "Table 4",
                          onPressed: (){ Navigator.of(context).pushNamed('/exercice2',arguments: 4);},
                        ),
                        DepliantBouton(
                          "Table 5",
                          onPressed: (){ Navigator.of(context).pushNamed('/exercice2',arguments: 5);},
                        ),
                        DepliantBouton(
                          "Table 6",
                          onPressed: (){ Navigator.of(context).pushNamed('/exercice2',arguments: 6);},
                        ),
                        DepliantBouton(
                          "Table 7",
                          onPressed: (){ Navigator.of(context).pushNamed('/exercice2',arguments: 7);},
                        ),
                        DepliantBouton(
                          "Table 8",
                          onPressed: (){ Navigator.of(context).pushNamed('/exercice2',arguments: 8);},
                        ),
                        DepliantBouton(
                          "Table 9",
                          onPressed: (){ Navigator.of(context).pushNamed('/exercice2',arguments: 9);},
                        ),
                        DepliantBouton(
                          "Table 10",
                          onPressed: (){ Navigator.of(context).pushNamed('/exercice2',arguments: 10);},
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








