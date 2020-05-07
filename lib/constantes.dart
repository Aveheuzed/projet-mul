
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
double screenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width / 600;
}
screenOrientation(BuildContext context){
  Orientation orientation=MediaQuery.of(context).orientation;
  return orientation;
}
// ignore: non_constant_identifier_names, camel_case_types
class bouton extends StatelessWidget{
  final String text;
  final double fontSize;
final double width;
final double height;
final Function onPressed;
  bouton(this.text,{this.width:400.0 ,this.height:65.0,this.fontSize:25.0,  this.onPressed}):super();
  @override
  Widget build(BuildContext context) {
   return Container(
    child: RaisedButton(
    shape: new RoundedRectangleBorder(
    borderRadius: new BorderRadius.circular(18.0),
    ),
    child: Text(text, style: TextStyle(color: Colors.white,
    fontSize: screenWidth(context)*fontSize, fontWeight:FontWeight.w400)),
    color: Color(0xff2c2d42),
    elevation: 3.0,
    onPressed: onPressed,
    ),
    width: screenWidth(context)*width,
    height:screenWidth(context)* height,

    );
  }

  }



class navBar1 extends PreferredSize {

  navBar1(BuildContext context) :
  super(
    preferredSize : Size.fromHeight(screenWidth(context)*85.0),
    child: Stack(
    children: <Widget>[
    AppBar( leading: Container(),

    ),
        Padding(
    padding: EdgeInsets.only( left:screenWidth(context)* 5, bottom: screenWidth(context)*20),
    child:IconButton(
    icon: Icon(Icons.settings, color: Colors.white),
    iconSize:screenWidth(context)* 64,
    onPressed: (){Navigator.of(context).pushNamed('/reglages');},
    ),),],

    )

     );
  }


class navBar2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PreferredSize(preferredSize: Size.fromHeight(screenWidth(context) * 85),
      child: Stack(children: <Widget>[
        AppBar(
          leading: Container(),

        ),
        Positioned(
          top: screenWidth(context) * 10,
          child: Center(
          child: Padding(padding: EdgeInsets.only(
              top: screenWidth(context) * 20,
              left: screenWidth(context) * 5,
              bottom: screenWidth(context) * 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.settings, color: Colors.white),
                  iconSize: 64,
                  onPressed: () {
                    Navigator.of(context).pushNamed('/reglages');
                  },
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth(context) * 100.0,
                  ),
                  child: Text("MasterMaths",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth(context) * 40.0,
                        color: Colors.white
                    ),
                  ),

                ),
                Image.asset("images/logo3.png",
                  height: screenWidth(context) * 67,
                )
              ],
            ),
          ),
          ),
        )

      ],


      ),
      ),
    );
  }
}
class StructPage extends StatelessWidget{
  final Widget navbar;
  final Widget container;
  final int existImage;
  final String image;
  StructPage(this.navbar,this.container,this.existImage ,this.image):super ();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: navbar,
      body: SafeArea(
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
                          colors: [Color(0xff9bdfeb), Color(0xfff3fbfc)]
                      )
                  ),
                ),

               Padding( padding: EdgeInsets.symmetric(
                 vertical: screenWidth(context)*12.0,
               ),
                  child:
                  Container(
                    child: (existImage == 1) ? Image.asset(
                      image, height: screenWidth(context) * 430,width:screenWidth(context) * 570) : null,
                  ),
                  ),

                Container(child: container),
              ],
            )
        ),
      ),

    );
  }
  }
  class InputForm extends StatelessWidget {
    final String text;
    final int ExistIcon;
    final double height;
    final IconData icon;
    final double width;

    InputForm(this.text, this.ExistIcon, this.icon, {this.height: 55.0, this.width: 450})
        :super();

    @override
    Widget build(BuildContext context) {
      return Container(
        alignment: Alignment.centerLeft,
        decoration: kBoxDecorationStyle,
        height: screenWidth(context)*height,
        width: screenWidth(context)*width,
        child: TextField(
          keyboardType: TextInputType.text,
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'OpenSans',
            fontSize: screenWidth(context)*25,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            // contentPadding: EdgeInsets.only(top: 14.0),
            prefixIcon: Icon(
              (ExistIcon == 1) ? icon : null,
              color: Colors.grey,
            ),
            hintText: text,
            hintStyle: kHintTextStyle,
          ),
        ),

      );
    }
  }
    
 



