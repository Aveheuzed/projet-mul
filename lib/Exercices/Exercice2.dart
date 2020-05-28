import 'package:flutter/material.dart';
import 'package:testappmult/Styles.dart';
import 'dart:math';
import 'package:testappmult/Exercices/Exercice2Correction.dart';


class Exercice2 extends StatefulWidget{
  final int niveau;
  final bool type = Random().nextBool();//true: multiplier |false: diviser
  final int num;
  final int score;
  Exercice2({this.niveau=1,this.num=1, this.score=0}): super();

  @override
  State<StatefulWidget> createState() => _Exercice2();
}
//1 n x 10/100/100 n = 1chiffre
//2 n x ou / 10/100 n = 2chiffre
//3 n x  10/100/100 n = 2chiffre decimal
//3 n / 10/100/1000 n = 3chiffre
class _Exercice2 extends State<Exercice2>{
  _Exercice2(): super();
  int next(int min, int max) => min + Random().nextInt(max - min);
  double n1;
  int n2;
  String intitule;
  List<Widget> children;
  bool type;
  TextEditingController controller = new TextEditingController();

  @override
  void initState() {
    super.initState();
    type = (widget.niveau>1)? widget.type : true;
    type=true; //force multiplication pour test
    switch(widget.niveau){
      case 1:{
        var l = [10,100];
        n1 = next(2,pow(10,widget.niveau)).toDouble();
        n2 = l[Random().nextInt(l.length)];
      }
      break;
      case 2:{
        if(type){
          var l = [10,100,1000];
          n1 = next(2,pow(10,widget.niveau)).toDouble();
          n2 = l[Random().nextInt(l.length)];
        }
        else{
          var l = [10,100,1000];
          n2 = l[Random().nextInt(l.length)];
          n1 = (next(2,pow(10,widget.niveau-1)) * n2).toDouble();
        }
      }
      break;
      case 3:{
        if(type){
          var l = [10,100,1000];
          n1 = Random().nextDouble()*next(2,10);
          n2 = l[Random().nextInt(l.length)];
          n1 = (n1*10).round() / 10  ;
        }
        else{
          var l = [10,100,1000];
          n2 = l[Random().nextInt(l.length)];
          n1 = (next(2,pow(10,widget.niveau-1)) * n2).toDouble();

        }
      }
      break;
    }

    if (type){
      intitule = n1.toStringAsFixed(n1.truncateToDouble() == n1 ? 0 : 1) + " X " + n2.toString();
    }
    else{
      intitule = n1.toStringAsFixed(n1.truncateToDouble() == n1 ? 0 : 1) + " / " + n2.toString();
    }
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
      SizedBox(height: 80),
      Container(
        padding: EdgeInsets.only(bottom:20),
        child: Text(
          intitule ,
          style: TextStyle(
            fontWeight: FontWeight.w900,
            color: Color(0xff323347),
            fontSize: 80,
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.only(bottom:20),
        child: Text(
          "=",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            color: Color(0xff323347),
            fontSize: 80,
          ),
        ),
      ),
      ChampReponse(
        controller: controller,
      ),
      SizedBox(height: 40),
      SizedBox(height: 40),
      Bouton("Valider", onPressed: (){test();})
    ];

  }




  void test(){
    if(type ){
      if( (int.parse(controller.text) == (n1 * n2))){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Exercice2Correction(niveau: widget.niveau, type: type, n1: n1, n2:n2, reponse: int.parse(controller.text), success: true, num: widget.num, score: widget.score+1)),
        );

      }else{
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Exercice2Correction(niveau: widget.niveau, type: type, n1: n1, n2:n2, reponse: int.parse(controller.text), success: false, num: widget.num, score: widget.score)),
        );
      }

    }else if ( int.parse(controller.text) == (n1 / n2) ) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Exercice2Correction(niveau: widget.niveau, type: type, n1: n1, n2:n2, reponse: int.parse(controller.text), success: true, num: widget.num, score: widget.score+1)),
      );
    }else{
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Exercice2Correction(niveau: widget.niveau, type: type, n1: n1, n2:n2, reponse: int.parse(controller.text), success: false, num: widget.num, score: widget.score)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {

    return WillPopScope(
      onWillPop: () async => false,// empèche le retour
      child: StructPage(
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


/*Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => Exercice1(niveau: widget.niveau,)),
);*/