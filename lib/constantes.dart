
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void identifier(BuildContext context){
  var alert=AlertDialog(
    content:Text("Identification avec succés"),
  );
  showDialog(
    context:context,
    builder:(BuildContext context) => alert,
  );
}

final kHintTextStyle = TextStyle(
  color: Colors.grey,


);

final kLabelStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,

);

final kBoxDecorationStyle = BoxDecoration(
  color: Colors.white,
  boxShadow: [
    BoxShadow(
      color: Colors.black38,
      blurRadius: 9.0, // has the effect of softening the shadow
     // has the effect of extending the shadow
      offset: Offset(
        2.0, // horizontal, move right 10
        1.0, // vertical, move down 10
      ),
    ),
  ],
);
// ignore: non_constant_identifier_names, camel_case_types
class bouton extends Container{
bouton (String text, {width:400.0 ,height:65.0,fontSize:25.0,fontWeight:FontWeight.w400,onPressed()}):
  super(
    child: RaisedButton(
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(18.0),
      ),
      child: Text(text, style: TextStyle(color: Colors.white,
        fontSize: fontSize, fontWeight: fontWeight,)),
      color: Color(0xff2c2d42),
      elevation: 3.0,
      onPressed: onPressed,
    ),
    width: width,
    height: height,

    );
}





class navBar1 extends PreferredSize {

  navBar1() :
        super(
          preferredSize: Size.fromHeight(85.0),
          child: Stack(
            children: <Widget>[
              AppBar(
              ),

              Positioned(
                top: 15, left: 13,
                child: Padding(
                  padding: EdgeInsets.only(top: 20, left: 5, bottom: 20),
                  child: Icon(
                    Icons.settings, size: 68, color: Colors.white,),),),
            ],
          )
      );
}
class navBar2 extends PreferredSize {

  navBar2() :
        super(
        preferredSize: Size.fromHeight(85),
          child : Stack(children:<Widget>[
            AppBar(

              backgroundColor: Color(0xff2c2d42) ,

            ),
            Positioned(
              top: 10,
              child: Padding(padding: EdgeInsets.only(top:20,left: 5,bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.settings, color: Colors.white),
                      iconSize: 64,
                      onPressed: (){print("settings");},
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 100.0,
                      ),
                      child:Text("MasterMaths",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 40.0,
                            color: Colors.white
                        ),
                      ),

                    ),
                    Image.asset("images/logo3.png",
                      height: 67,
                    )
                  ],
                ),
              ),
            )
          ],
          ),
      );


}

class StructPage1 extends Scaffold{

 StructPage1(Widget navbar,BuildContext context,Widget container,int existImage ,String image) :
      super (
      appBar:navbar,
      body:  GestureDetector(
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
              top : -20,
              child : Container(
                child : (existImage==1)? Image.asset(image, height : 430, ): null,
              margin : EdgeInsets.only(right : 25),
              ),
              ),
              Container(child: container),
            ],
            )
        ),

 );
  }
class InputForm extends Container {
  // ignore: avoid_init_to_null
  InputForm(String text,int ExistIcon,icon,{ height:55.0 , width:450}):super(

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
              (ExistIcon==1)? icon : null,
              color: Colors.grey,
            ),
            hintText: 'Identifiant',
            hintStyle: kHintTextStyle,
          ),
        ),

  );
}


    
 



