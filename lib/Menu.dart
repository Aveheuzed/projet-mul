import 'package:flutter/material.dart';
import 'package:testappmult/ExerciceLibres.dart';
import 'package:testappmult/Styles.dart';

class Menu extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,// empèche le retour
      child: StructPage(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Bouton("Éxercices libres", onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ExercicesLibres()),
                  );
                },
              ),
              SizedBox(height: 40),
              Bouton("Exercices encadrés", onPressed: (){}),
              SizedBox(height: 40),
              Bouton("Résultats", onPressed: (){})
            ],
          ),
        ),
      ),
    );
  }
}

