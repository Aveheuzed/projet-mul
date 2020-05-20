import 'package:flutter/material.dart';
import 'package:testappmult/Styles.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return StructPage(
      existImage: 1,
      child: SingleChildScrollView(
        child:
          Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset("assets/images/logo.png", width: screenWidth(context) * 669,),// scale ?
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ChampTexte(placeholder: "Identifiant"),
                    SizedBox(height: 30),
                    ChampTexte(placeholder: "Mot de passe"),
                  ],
                ),

                Bouton(
                  "S'identifier",
                  onPressed: (){
                      Navigator.of(context).pushNamed('/Menu');
                  },
                ),
              ],
            ),
          ),
      )
    );
  }


}

