import 'package:flutter/material.dart';
import 'constantes.dart';
import 'dart:math';
import 'exercice1correction.dart';

class Exercice1 extends StatefulWidget{
  final int niveau;
  final bool type = Random().nextBool();//true: double |false: moitié
  Exercice1({this.niveau=1}): super();

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
        "Niveau " + widget.niveau.toString(),
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
        print("success");

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Exercice1Correction(niveau: widget.niveau, type: widget.type, nombre: nombre, reponse: int.parse(doubleController.text), success: true,)),
        );

      }else{
        print("echec");
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Exercice1Correction(niveau: widget.niveau, type: widget.type, nombre: nombre, reponse: int.parse(doubleController.text), success: false,)),
        );
      }

    }else if ( int.parse(moitieController.text) == (nombre/2) ) {
      print("success");

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Exercice1Correction(niveau: widget.niveau, type: widget.type, nombre: nombre, reponse: int.parse(moitieController.text), success: true,)),
      );
    }else{
      print("echec");
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Exercice1Correction(niveau: widget.niveau, type: widget.type, nombre: nombre, reponse: int.parse(moitieController.text), success: false,)),
      );
    }

  }

  @override
  Widget build(BuildContext context) {

    return WillPopScope(
      onWillPop: () async => false,//
      child: StructPage (
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height-100,
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