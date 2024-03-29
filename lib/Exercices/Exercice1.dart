import 'package:flutter/material.dart';
import 'package:testappmult/Styles.dart';
import 'dart:math';
import 'package:testappmult/Exercices/Exercice1Correction.dart';


class Exercice1 extends StatefulWidget{
  final int niveau;
  final bool type = Random().nextBool();//true: double |false: moitié
  final int num;
  final int score;
  Exercice1({this.niveau=1,this.num=1, this.score=0}): super();

  @override
  State<StatefulWidget> createState() => _Exercice1();
}

class _Exercice1 extends State<Exercice1>{
  _Exercice1(): super();
  int next(int min, int max) => min + Random().nextInt(max - min);
  int nombre;
  List<Widget> children;

  TextEditingController doubleController = new TextEditingController();
  TextEditingController moitieController = new TextEditingController();

  @override
  void initState() {
    super.initState();
    nombre= next(2,pow(10,widget.niveau));
    if (!widget.type && (nombre%2 !=0)) nombre=nombre+1;

    children=<Widget>[
      Text(
        widget.num.toString() + "/10\n" +"Niveau " + widget.niveau.toString(),
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Color(0xFF323347),
            fontSize: 30,
            fontWeight: FontWeight.w800
        ),
      ),
      Container(
        padding: EdgeInsets.only(bottom:20),
        child: Text(
          nombre.toString(),
          style: TextStyle(
            fontWeight: FontWeight.w900,
            color: Color(0xff323347),
            fontSize: 80,
          ),
        ),
      ),
      ChampReponse(
        titre: "Double",
        controller: doubleController,
        enabled: widget.type,
      ),
      SizedBox(height: 40),
      ChampReponse(
        titre: "Moitié",
        controller: moitieController,
        enabled: !widget.type,
      ),
      SizedBox(height: 40),
      Bouton("Valider", onPressed: (){test();})
    ];

  }




  void test(){
    if(widget.type ){
      if( (int.parse(doubleController.text) == (nombre * 2))){

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Exercice1Correction(niveau: widget.niveau, type: widget.type, nombre: nombre, reponse: int.parse(doubleController.text), success: true, num: widget.num, score: widget.score+1)),
        );

      }else{
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Exercice1Correction(niveau: widget.niveau, type: widget.type, nombre: nombre, reponse: int.parse(doubleController.text), success: false, num: widget.num, score: widget.score)),
        );
      }

    }else if ( int.parse(moitieController.text) == (nombre/2) ) {

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Exercice1Correction(niveau: widget.niveau, type: widget.type, nombre: nombre, reponse: int.parse(moitieController.text), success: true, num: widget.num, score: widget.score+1)),
      );
    }else{
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Exercice1Correction(niveau: widget.niveau, type: widget.type, nombre: nombre, reponse: int.parse(moitieController.text), success: false, num: widget.num, score: widget.score)),
      );
    }

  }

  @override
  Widget build(BuildContext context) {

    return WillPopScope(
      onWillPop: () async => false,// empêche le retour
      child: StructPage(
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: children
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}


/*Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => Exercice1(niveau: widget.niveau,)),
);*/