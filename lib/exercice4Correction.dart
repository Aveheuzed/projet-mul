import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constantes.dart';
import 'generateurRoute.dart';
class Exercice4Correction extends StatefulWidget{
  final int nombre;
  final String operation;
  final List compteur;
   int score;
  int num;
  Exercice4Correction({this.nombre, this.operation,this.compteur,this.score,this.num}): super();

  @override
  _Exercice4correction createState() => _Exercice4correction();

}

class _Exercice4correction extends State<Exercice4Correction> {
  _Exercice4correction() : super();
  int nb;
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
    nb=widget.compteur[0];
    trou=widget.compteur[2];
    result=widget.compteur[1];

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
          ),  SizedBox(height: 40),
           Row(crossAxisAlignment: CrossAxisAlignment.center,

              children: <Widget>[
                Padding( padding: EdgeInsets.only(right: 27,left: 54),
                  child:
                Text( widget.operation,
                  textAlign: TextAlign.center,
                  style: titrestyle,
                ),),
  if(widget.operation=="+")
    trou==result-nb?
    Padding(padding: EdgeInsets.all(30.0),

    child: new ChampReponseCorrection(

    reponse: trou.toDouble(),
    color: 0xFF0CCC06,
    ),
    ) : Padding(padding: EdgeInsets.all(30.0),

    child: trou!=null?
    new ChampReponseCorrectionex2(
    bn: (result-nb).toString()  ,
    reponse:  trou.toString(),
    color: 0xffffffff,
    ):  new ChampReponseCorrectionex2(
    reponse: " ",
    bn: (result-nb).toString()  ,
    color: 0xffffffff,
    )
    ),
      if(widget.operation=="-")
      trou==nb-result?
    Padding(padding: EdgeInsets.all(30.0),

      child: new ChampReponseCorrection(

        reponse: trou.toDouble(),
        color: 0xFF0CCC06,
      ),
    ) : Padding(padding: EdgeInsets.all(30.0),

        child: trou!=null?
        new ChampReponseCorrectionex2(
          bn: (nb-result).toString()  ,
          reponse:  trou.toString(),
          color: 0xffffffff,
        ):  new ChampReponseCorrectionex2(
          reponse: " ",
          bn: (nb-result).toString()  ,
          color: 0xffffffff,
        )
        ),
    ],
            ),
          SizedBox(height: 7, width: 190,
            child: Container(color: Color(0xff323347),),

          ),
          Text(
            result.toString() ,
            textAlign: TextAlign.center,
            style: titrestyle,
          ),
          SizedBox(height: 60),
          Bouton("Suivant", onPressed: (){

            print(trou);
             if (widget.num==9)
               Navigator.of(context).pushNamed('/Resultat',arguments: Arguments(widget.nombre,"",widget.compteur,widget.score,0));
             else {
               widget.num=widget.num+1;
               if (widget.operation == "+")
                 Navigator.of(context).pushNamed('/exercice4',
                     arguments: Arguments(widget.nombre, "+", widget.compteur, widget.score,widget.num));


               if (widget.operation == "-")
            Navigator.of(context).pushNamed('/exercice4',
                arguments: Arguments(widget.nombre,"-",widget.compteur,widget.score,widget.num));

          }

            })
        ],
      ),

    ];

  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
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