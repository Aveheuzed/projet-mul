import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constantes.dart';
class ExercicesLibres extends StatefulWidget {
  @override
  _Exerciceslibres createState() => _Exerciceslibres();
}

class _Exerciceslibres extends State<ExercicesLibres> {

  @override
  Widget build(BuildContext context) {
    return StructPage(navBar2(),

        Positioned(
          top:-60,right: 50,left: 50,
        child :Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 120.0,
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[

                Text("liste des exercices ",style: TextStyle(
                    color:Color(0xFF2c2d42),fontSize: 40,
                ),),
                SizedBox(
                  height: 30.0,
                ),
                bouton("Double et moitié", onPressed:() {}),
                SizedBox(
                  height: 20.0,
                ),
                bouton("Multiplier et diviser", onPressed:() {}),
                SizedBox(
                  height: 20.0,
                ),



                bouton("Trouver les multiples", onPressed:() {}),
                SizedBox(
                  height: 20.0,
                ),

                bouton("Tables d'addition", onPressed:() {}),
                SizedBox(
                  height: 20.0,
                ),

                bouton("Tables de multiplication", onPressed:() {}),
                SizedBox(
                  height: 20.0,
                ),

                bouton("Addition à trous", onPressed:() {}),
                SizedBox(
                  height: 20.0,
                ),

                bouton("Multiplication à trous", onPressed:() {}),
                IconButton(
                  icon: Icon(Icons.arrow_back, color: Color(0xFF2c2d42)),
                  iconSize: 64,
                  padding:EdgeInsets.only(right: 500 ),
                  onPressed: (){Navigator.pop(context,true);},
                ),
              ],
            ),

        ),

        ),0,"images/logo3.png");


  }
}






