import 'package:flutter/material.dart';
import 'package:testappmult/Styles.dart';

class Exercice1 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,// empèche le retour
      child: StructPage(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  //padding: EdgeInsets.only(left: screenWidth(context) * padding),
                  width: 279,

                  decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.all(Radius.circular(36)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Color(0x10000000),
                            blurRadius: 6.0,
                            offset: Offset(
                                0.0, //x
                                3.0 //y
                            )
                        )
                      ]
                  ),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Double",
                        style: TextStyle(
                          color: Color(0xffB6AAB6),
                          fontWeight: FontWeight.w600,
                          fontSize: 28,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Color(0xff323347),
                            fontSize: 80
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  )
                ),
                SizedBox(height: 30),
                Bouton("Valider", onPressed: (){Navigator.of(context).pushNamed('/Exercice1');})
              ],
            ),
              ],
            )

      ),
    );
  }
}

