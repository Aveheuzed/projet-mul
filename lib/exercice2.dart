import 'package:flutter/cupertino.dart';

import 'constantes.dart';
import 'package:flutter/material.dart';
import 'dart:math';
class Exercice2 extends StatefulWidget{
  final int nombre;

  Exercice2({this.nombre}): super();

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
            Text(
              "La table de multiplication "+ widget.nombre.toString(),
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
          child: Text(
        i.toString()+" x "+ widget.nombre.toString()+" = " ,
            style: TextStyle(

              fontWeight: FontWeight.w900,
              color: Color(0xff323347),
              fontSize: 40,
            ),
          ),
        )
        : Padding(padding: EdgeInsets.only(left:7),
    child: Text(
    i.toString()+" x "+ widget.nombre.toString()+" = " ,
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
    print(resultab),
     k=0,
    for (j= 0; j < resultab.length-1; j++)
    if (resultab[j] == (j*widget.nombre)){
      TextStyle(color: Colors.red),
    k=k+1,},
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