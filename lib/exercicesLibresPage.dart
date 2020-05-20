
import 'package:flutter/material.dart';
import 'package:multiplication/generateurRoute.dart';
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
                          onPressed: (){  Navigator.of(context).pushNamed('/exercice2',arguments:Arguments(1,'+',null));},
                        ),
                        DepliantBouton(
                          "Table 2",
                          onPressed: (){  Navigator.of(context).pushNamed('/exercice2',arguments:Arguments(2,'+',null));},
                        ),
                        DepliantBouton(
                          "Table 3",
                          onPressed: (){
                            Navigator.of(context).pushNamed('/exercice2',arguments:Arguments(3,'+',null));
                          },
                        ),
                        DepliantBouton(
                          "Table 4",
                          onPressed: (){Navigator.of(context).pushNamed('/exercice2',arguments:Arguments(4,'+',null));},
                        ),
                        DepliantBouton(
                          "Table 5",
                          onPressed: (){Navigator.of(context).pushNamed('/exercice2',arguments:Arguments(5,'+',null));},
                        ),
                        DepliantBouton(
                          "Table 6",
                          onPressed: (){Navigator.of(context).pushNamed('/exercice2',arguments:Arguments(6,'+',null));},
                        ),
                        DepliantBouton(
                          "Table 7",
                          onPressed: (){Navigator.of(context).pushNamed('/exercice2',arguments:Arguments(7,'+',null));},
                        ),
                        DepliantBouton(
                          "Table 8",
                          onPressed: (){Navigator.of(context).pushNamed('/exercice2',arguments:Arguments(8,'+',null));},
                        ),
                        DepliantBouton(
                          "Table 9",
                          onPressed: (){Navigator.of(context).pushNamed('/exercice2',arguments:Arguments(9,'+',null));},
                        ),
                        DepliantBouton(
                          "Table 10",
                          onPressed: (){Navigator.of(context).pushNamed('/exercice2',arguments:Arguments(10,'+',null));},
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Depliant(
                      titre: 'Table de multiplication',
                      options: <Widget>[
                        DepliantBouton(
                          "Table 1 ",
                          onPressed: (){  Navigator.of(context).pushNamed('/exercice2',arguments:Arguments(1,'x',null));},
                        ),
                        DepliantBouton(
                          "Table 2",
                          onPressed: (){ Navigator.of(context).pushNamed('/exercice2',arguments: Arguments(2,'x',null));},
                        ),
                        DepliantBouton(
                          "Table 3",
                          onPressed: (){ Navigator.of(context).pushNamed('/exercice2',arguments:Arguments(3,'x',null));},
                        ),
                        DepliantBouton(
                          "Table 4",
                          onPressed: (){ Navigator.of(context).pushNamed('/exercice2',arguments: Arguments(4,'x',null));},
                        ),
                        DepliantBouton(
                          "Table 5",
                          onPressed: (){ Navigator.of(context).pushNamed('/exercice2',arguments: Arguments(5,'x',null));},
                        ),
                        DepliantBouton(
                          "Table 6",
                          onPressed: (){ Navigator.of(context).pushNamed('/exercice2',arguments: Arguments(6,'x',null));},
                        ),
                        DepliantBouton(
                          "Table 7",
                          onPressed: (){ Navigator.of(context).pushNamed('/exercice2',arguments: Arguments(7,'x',null));},
                        ),
                        DepliantBouton(
                          "Table 8",
                          onPressed: (){ Navigator.of(context).pushNamed('/exercice2',arguments: Arguments(8,'x',null));},
                        ),
                        DepliantBouton(
                          "Table 9",
                          onPressed: (){ Navigator.of(context).pushNamed('/exercice2',arguments: Arguments(9,'x',null));},
                        ),
                        DepliantBouton(
                          "Table 10",
                          onPressed: (){ Navigator.of(context).pushNamed('/exercice2',arguments: Arguments(10,'x',null));},
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








