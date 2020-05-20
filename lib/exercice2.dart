import 'package:flutter/cupertino.dart';

import 'constantes.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'generateurRoute.dart';
class Exercice2 extends StatefulWidget{
  final int nombre;
 final String operation;
  final int couleur;
  Exercice2({this.nombre , this.operation,this.couleur=0xFFFFFFFF}): super();

  @override
  _Exercice2 createState() => _Exercice2();
}

class _Exercice2 extends State<Exercice2> {
  _Exercice2() : super();
  int result;

  var resultab = new List(11);
  var j;
  int k;
  List<Widget> children;

final titrestyle=TextStyle(
    color: Color(0xFF323347),
    fontSize: 25,
    fontWeight: FontWeight.w800
);
  void initState() {
    super.initState();
    children=<Widget>[
     Padding( padding: EdgeInsets.only(top: 40,bottom: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
        "Exercice 5  ",
        textAlign: TextAlign.center,
        style: titrestyle,
          ),
            Text(
              "Completer ",
              textAlign: TextAlign.center,
              style: titrestyle,
            ),
            Text( widget.operation=='x'?
              "La table de multiplication "+ widget.nombre.toString(): "La table d'adition "+ widget.nombre.toString(),
              textAlign: TextAlign.center,
              style: titrestyle,
            ),
    ],
          ),
      ),
    Container(
   child:new Column (
     children: <Widget>[
   for(var i = 0; i < 11; i++)

    Row(
    children: <Widget>[
      i!=10?
        Padding(padding: EdgeInsets.only(left: 35),
          child: Text(widget.operation=='x'?
        i.toString()+" x "+ widget.nombre.toString()+" = " :i.toString()+" + "+ widget.nombre.toString()+" = ",
            style: TextStyle(

              fontWeight: FontWeight.w900,
              color: Color(0xff323347),
              fontSize: 40,
            ),
          ),
        )
        : Padding(padding: EdgeInsets.only(left:9),
    child: Text(widget.operation=='x'?
    i.toString()+" x "+ widget.nombre.toString()+" = " :i.toString()+" + "+ widget.nombre.toString()+" = ",
    style: TextStyle(
    fontWeight: FontWeight.w900,
    color: Color(0xff323347),
    fontSize: 40,
    ),
    ),
    ),



       Padding(padding: EdgeInsets.all(30.0),

       child:new ChampReponse(

        onChanged: (String str){
        setState((){
        result = int.parse(str);
        });
        resultab[i]=result;

        }
        ),


      ),
    ]
    ),



      Padding(padding: EdgeInsets.all(20),
      child:Bouton("Valider", onPressed: ()=>{
    print(resultab), Navigator.of(context).pushNamed('/exercice2correction',arguments: Arguments(widget.nombre,"+",resultab)),
     k=0,
    for (j= 0; j < resultab.length-1; j++)
      widget.operation=="x"?{
    if (resultab[j] == (j*widget.nombre)){
      k=k+1, }

     }
    :{if (resultab[j] == (j+widget.nombre)){
          k=k+1,
        }

      },

    if (k==10)
    print("success: " )
    else
    print("echec " +k.toString())}
    )
      ),
    ],
    ),
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:children,
                  ),

              ),
            ),
          )

    );
  }
}