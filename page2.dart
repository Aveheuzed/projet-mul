import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'constantes.dart';
class Page2Screen extends StatefulWidget {
  @override
  _Page2ScreenState createState() => _Page2ScreenState();
}

class _Page2ScreenState extends State<Page2Screen> {


  Widget _exerciceLibre() {
    var button=Container(
      width: 400 ,
      height: 65  ,
      margin: EdgeInsets.all(20),
      child: RaisedButton(
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(18.0),
        ),
        child:Text("Exercice libres", style:TextStyle(color: Colors.white,
          fontFamily: 'openSans',
          fontSize: 25,fontWeight: FontWeight.w400,)),
        color:Color(0xff2c2d42 ) ,
        elevation:3.0,
        onPressed:(){

        },
      ),
    );
    return button;
  }
  Widget _exerciceEncadre() {
    var button=Container(
      width: 400 ,
      height: 65  ,
      margin: EdgeInsets.all(20),
      child: RaisedButton(
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(18.0),
        ),
        child:Text("Exercices Encadrés", style:TextStyle(color: Colors.white,
          fontFamily: 'openSans',
          fontSize: 25,fontWeight: FontWeight.w400,)),
        color:Color(0xff2c2d42 )  ,
        elevation:3.0,
        onPressed:(){

        },
      ),
    );
    return button;
  }
  Widget _resultat() {
    var button=Container(
      width: 400 ,
      height: 65  ,
      margin: EdgeInsets.all(20),
      child: RaisedButton(
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(18.0),
        ),
        child:Text("Résultats", style:TextStyle(color: Colors.white,
          fontFamily: 'openSans',
          fontSize: 25,fontWeight: FontWeight.w400,)),
        color:Color(0xff2c2d42 )  ,
        elevation:3.0,
        onPressed:(){

        },
      ),
    );
    return button;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize( preferredSize: Size.fromHeight(85),
          child : Stack(children:<Widget>[
            AppBar(

              backgroundColor: Color.fromRGBO(50, 51, 71, 1) ,

            ),
            Positioned(
              top: 15,left: 13,
              child: Padding(padding: EdgeInsets.only(top:20,left: 5,bottom: 20),
                child: Icon(Icons.settings,size: 68,color: Colors.white,),),),
          ],
          ),
        ),
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Stack(
              children: <Widget>[

                Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [Color(0xff9bdfeb) ,Color(0xfff3fbfc)]
                      )
                  ),
                ),

                Positioned(
                  top:-20,
                  child : Container(
                    child : imageLogo(),
                    margin: EdgeInsets.only(right: 25),
                  ),),
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
                        _exerciceLibre(),
                        SizedBox(
                          height: 10.0,
                        ),
                        _exerciceEncadre(),
                        SizedBox(
                          height: 10.0,
                        ),

                        _resultat(),
                      ],
                    ),



                  ),
                ),
              ],
            ),

          ),

        )
    );
  }
}

// ignore: camel_case_types

// ignore: must_be_immutable




