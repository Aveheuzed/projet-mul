import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:testappmult/Styles.dart';
import 'package:testappmult/generateurRoute.dart';

class Exercice4 extends StatefulWidget{
  final int nombre;
  final String operation;
  int num;
   int score=0;
  Exercice4({this.nombre , this.operation,this.num=1,this.score}): super();

  @override
  _Exercice4 createState() => _Exercice4();
}

class _Exercice4 extends State<Exercice4> {
  _Exercice4() : super();
  var compteur = new List(3);

  int nb;
  int next(int min, int max) => min + Random().nextInt(max - min );
  int result;
  int trou;
  var j;
  int k;

  List<Widget> children;
  final titrestyle=TextStyle(
      color: Color(0xFF323347),
      fontSize: 25,
      fontWeight: FontWeight.w800
  );
  void initState() {
 if (widget.operation=="+")
    nb= next(2,pow(10,widget.nombre+1)); else nb= next(2,pow(10,widget.nombre)) ;
    compteur[0]=nb;
  if (widget.operation=="+")
    {do {
      result= next(2,pow(10,widget.nombre+1)) ;
    } while(result < nb);}
    else do {
    result= next(2,pow(10,widget.nombre)) ;
    }while(result > nb);
    compteur[1]=result;
    super.initState();
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
          //Padding(padding: EdgeInsets.symmetric(horizontal: 170.0*0.2),
         //child:
            SizedBox(height: 40),
         Row(crossAxisAlignment: CrossAxisAlignment.center,

           children: <Widget>[

             Padding( padding: EdgeInsets.only(right: 28,left: 54),
                child: Text( widget.operation + "  ",
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

              if(widget.operation=="+")
                  if(trou==result-nb)
                    { widget.score=widget.score+1;
              Navigator.of(context).pushNamed('/exercice4correction',
                  arguments: Arguments(widget.nombre,"+",compteur,widget.score,widget.num));}else
              Navigator.of(context).pushNamed('/exercice4correction',
                  arguments: Arguments(widget.nombre,"+",compteur,widget.score,widget.num));
              if (widget.operation=="-")
                  if (trou == nb-result) {
                  widget.score = widget.score + 1;
                  Navigator.of(context).pushNamed('/exercice4correction',
                      arguments: Arguments(widget.nombre, "-", compteur, widget.score, widget.num));
                } else{
                  Navigator.of(context).pushNamed('/exercice4correction',
                      arguments: Arguments(widget.nombre, "-", compteur, widget.score, widget.num));}


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