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
    return StructPage1(navBar1(),context,
        Container(
          height: double.infinity,
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(
              horizontal: 120.0,
              vertical: 120.0,
            ),



            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                SizedBox(height:220.0),
                bouton("Exercices lencadrées", onPressed:() {}),
                SizedBox(
                  height: 10.0,
                ),
                bouton("Exercices lencadrées", onPressed:() {}),
                SizedBox(
                  height: 10.0,
                ),

                bouton("Exercices lencadrées", onPressed:() {}),
              ],
            ),



          ),
        ),1,"images/logofinale.png");


  }
}

// ignore: camel_case_types

// ignore: must_be_immutable




