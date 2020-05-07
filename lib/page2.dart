import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constantes.dart';
class Page2Screen extends StatefulWidget {
  @override
  _Page2ScreenState createState() => _Page2ScreenState();
}

class _Page2ScreenState extends State<Page2Screen> {

  @override
  Widget build(BuildContext context) {
   return WillPopScope (
     onWillPop:()=>Future.value(false),
    child: StructPage(navBar1(context),
        Container(
            padding: EdgeInsets.symmetric(
              horizontal: 120.0,
              vertical: 120.0,
            ),



            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                SizedBox(height:220.0),
                bouton("Exercices libres", onPressed:() {
                  Navigator.of(context).pushNamed('/exerciceslibres');
                }
                ),
                SizedBox(
                  height: 30.0,
                ),
                bouton("Exercices encadrés", onPressed:() {}),
                SizedBox(
                  height: 30.0,
                ),

                bouton("Résultats", onPressed:() {}),
              ],
            ),




        ),1,"images/logofinale.png"),
    );

  }
}





