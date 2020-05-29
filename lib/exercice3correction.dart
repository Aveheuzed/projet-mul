import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constantes.dart';
import 'generateurRoute.dart';
class Exercice3Correction extends StatefulWidget{
  final int nombre;
  final String operation;
  final List reponse;
  final int score;

  Exercice3Correction({this.nombre, this.operation,this.reponse,this.score}): super();

  @override
  _Exercice3correction createState() => _Exercice3correction();

}

class _Exercice3correction extends State<Exercice3Correction> {
  _Exercice3correction() : super();
  int result;

  var j;
  int color;
  List<Widget> children;

  final titrestyle=TextStyle(
      color: Color(0xFF323347),
      fontSize: 25,
      fontWeight: FontWeight.w800
  );
  void initState() {
    super.initState();
    children = <Widget>[
      Padding(padding: EdgeInsets.only(top: 40, bottom: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Exercice 5  ",
              textAlign: TextAlign.center,
              style: titrestyle,
            ),
            Text(
              " Correction ",
              textAlign: TextAlign.center,
              style: titrestyle,
            ),
          ],
        ),
      ),
      Container(
        child: new Column (
          children: <Widget>[
            for(var i = 0; i < 11; i++)

              Row(
                  children: <Widget>[
                    i != 10 ?
                    Padding(padding: EdgeInsets.only(left: 35),
                      child: Text(widget.operation == 'x'
                          ?
                      i.toString() + " x " + widget.nombre.toString() + " = "
                          : i.toString() + " + " + widget.nombre.toString() +
                          " = ",
                        style: TextStyle(

                          fontWeight: FontWeight.w900,
                          color: Color(0xff323347),
                          fontSize: 40,
                        ),
                      ),
                    )
                        : Padding(padding: EdgeInsets.only(left: 7),
                      child: Text(widget.operation == 'x'
                          ?
                      i.toString() + " x " + widget.nombre.toString() + " = "
                          : i.toString() + " + " + widget.nombre.toString() +
                          " = ",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Color(0xff323347),
                          fontSize: 40,
                        ),
                      ),
                    ),

                    widget.operation=="x"?
                    widget.reponse[i]==i*widget.nombre?
                    Padding(padding: EdgeInsets.all(30.0),

                      child: new ChampReponseCorrection(

                        reponse:  widget.reponse[i].toDouble(),
                        color: 0xFF0CCC06,
                      ),
                    ) : Padding(padding: EdgeInsets.all(30.0),

                      child: widget.reponse[i]!=null?
                      new ChampReponseCorrectionex2(
                        bn: (i*widget.nombre).toString()  ,
                        reponse:  widget.reponse[i].toString(),
                        color: 0xffffffff,
                      ):  new ChampReponseCorrectionex2(
                        reponse: " ",
                        bn: (i*widget.nombre).toString()  ,
                        color: 0xffffffff,
                      )
                    ): widget.reponse[i]==i+widget.nombre?
                    Padding(padding: EdgeInsets.all(30.0),

                      child: new ChampReponseCorrection(
                        reponse: widget.reponse[i].toDouble() ,
                        color: 0xFF0CCC06,
                      ),
                    ) :
                    Padding(padding: EdgeInsets.all(30.0),

                      child:  widget.reponse[i]==null?
                      new ChampReponseCorrectionex2(
                        reponse: " ",
                        bn: (i+widget.nombre).toString() ,
                        color:0xffffffff,
                      ):
                      new ChampReponseCorrectionex2(
                        bn: (i+widget.nombre).toString() ,
                        reponse: widget.reponse[i].toString() ,
                        color:0xffffffff,
                      ),
                    )
                  ]
              ),


            Padding(padding: EdgeInsets.all(20),
                child: Bouton("Résultat", onPressed: () =>
                {

                Navigator.of(context).pushNamed('/Resultat',arguments: Arguments(widget.nombre,"",null,widget.score,0))}
                ),
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
