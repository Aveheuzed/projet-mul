import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:testappmult/Styles.dart';
import 'package:testappmult/generateurRoute.dart';

class Exercice5 extends StatefulWidget{
  final int nombre;
  final String operation;
  int num;
  int score=0;
  Exercice5({this.nombre , this.operation,this.num=1,this.score}): super();

  @override
  _Exercice5 createState() => _Exercice5();
}

class _Exercice5 extends State<Exercice5> {
  _Exercice5() : super();
  var compteur = new List(3);

  int nb;

  int next(int min, int max) => min + Random().nextInt(max - min);
  int result;
  int trou;
  var j;
  int k;

  List<Widget> children;
  final titrestyle = TextStyle(
      color: Color(0xFF323347),
      fontSize: 25,
      fontWeight: FontWeight.w800
  );

  void initState() {super.initState();
    if (widget.nombre == 1) nb = next(2, 20);
    else if (widget.nombre == 2) nb = next(21, 50);
    else nb = next(51, 100);
    compteur[0] = nb;
    if (widget.nombre == 1)
      do {result = next(2, 20);} while (result == nb || result % (nb) != 0);
    else if (widget.nombre == 2) do {result = next(21, 50);} while (result == nb || result % (nb) != 0);
    else do {result = next(51, 100);} while (result == nb || result % (nb) != 0);
    compteur[1]=result;
    nb=next(2, 20);
    compteur[0]=20;
    result=next(2,20);
    compteur[1]=result;
    children=<Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(height: 50),
          Text(
            (widget.num+1).toString() + "/10\n" +"Niveau " + widget.nombre.toString(),
            textAlign: TextAlign.center,
            style: titrestyle,
          ),SizedBox(height: 40),
          Text( nb.toString(),
            textAlign: TextAlign.center,
            style: titrestyle,
          ),
          SizedBox(height: 40),
          Row(crossAxisAlignment: CrossAxisAlignment.center,

            children: <Widget>[

              Padding( padding: EdgeInsets.only(right: 28,left: 54),
                child: Text( widget.operation ,
                  textAlign: TextAlign.center,
                  style: titrestyle,
                ),),
              ChampReponse(
                  onChanged: (String str){
                    setState((){
                      trou = int.parse(str);
                    }
                    );compteur[2]=trou;
                  }
              ),
            ],
          ),
          //),
         // Text((25~/5).toString(),style:titrestyle, ),
          SizedBox(height: 40),
          SizedBox(height: 7, width: 190,
            child: Container(color: Color(0xff323347),),

          ),
          SizedBox(height: 40),
          Text(
            result.toString() ,
            textAlign: TextAlign.center,
            style: titrestyle,
          ),
          SizedBox(height: 60),
        Bouton("Valider", onPressed: (){

            print(trou);
              if(trou==result~/nb)
              { widget.score=widget.score+1;
              Navigator.of(context).pushNamed('/exercice5correction',
                  arguments: Arguments(widget.nombre,'x',compteur,widget.score,widget.num));
              }else
                Navigator.of(context).pushNamed('/exercice5correction',
                    arguments: Arguments(widget.nombre,'x',compteur,widget.score,widget.num));


          })
        ],
      ),

    ];

  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,// empèche le retour
        child: StructPage(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:children,
              ),

            ),
          ),
        )

    );
  }
}