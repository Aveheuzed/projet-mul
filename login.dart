import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'constantes.dart';
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  Widget _identifiant() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[

        Container(

          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 55.0,
          width: 450,
          child: TextField(
            keyboardType: TextInputType.text,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
              fontSize: 25,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
             // contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.person,
                color: Colors.grey,
              ),
              hintText: 'Identifiant',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _MotDePasse() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 55.0,
          width: 450,
          child: TextField(
            obscureText: true,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
              fontSize: 25,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              //contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.grey,
              ),
              hintText: 'Mot de passe',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
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
                    horizontal: 80.0,
                    vertical: 120.0,
                  ),



                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                        SizedBox(height:270.0),
                      _identifiant(),
                      SizedBox(
                        height: 25.0,
                      ),
                      _MotDePasse(),
                      SizedBox(
                        height: 60.0,
                      ),

                      IdentifierBoutton(),
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
class imageLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage("images/logofinale.png");
    Image image = Image(image :assetImage);
    return Container(child : image ,height: 430,);
  }
}
// ignore: must_be_immutable
class IdentifierBoutton extends StatelessWidget{

  TextStyle styleDeBoutton=TextStyle(
      color: Colors.white,
      fontFamily: 'openSans',
      fontSize: 28,fontWeight: FontWeight.w400,
      letterSpacing:1,
  );
  @override
  Widget build(BuildContext context) {
    var button=Container(
      width: 300 ,
      height: 55  ,
      margin: EdgeInsets.all(20),
      child: RaisedButton(
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(18.0),
        ),
        child:Text("S'identifier", style:styleDeBoutton),
        color:Color(0xff2c2d42 )  ,
        elevation:3.0,
        onPressed:(){
          identifier(context);
        },
      ),
    );
    return button;
  }

  void identifier(BuildContext context){
    var alert=AlertDialog(
      content:Text("Identification avec succés"),
    );
    showDialog(
      context:context,
      builder:(BuildContext context) => alert,
    );
  }
}
