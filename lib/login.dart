
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constantes.dart';
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return StructPage1( navBar1(context),context,
               Container(
                  height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 80.0,
                    vertical: 120.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                        SizedBox(height:270.0),
                      InputForm("Identifiant",1,Icons.person),
                      SizedBox(
                        height: 25.0,
                      ),
                      InputForm("Mot de passe ",1,Icons.lock),
                      SizedBox(
                        height: 60.0,
                      ),

                      bouton ("S\'identifier",width:300.0 ,height:55.0,fontSize:25.0,fontWeight:FontWeight.w400,onPressed:
                      (){
                      Navigator.of(context).pushNamed('/page2');
                        },),
                    ],
                  ),



          ),
               ), 1,"images/logofinale.png");

  }
}
