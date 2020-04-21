import 'package:flutter/material.dart';

const kToolbarHeight = 195.0;

class Bouton extends MaterialButton {

  Bouton(String text, {width : 420.0, height : 71.0,  onPressed, fontSize : 30.0}):
    super(
      child: Text(text,
        style: TextStyle(
          color: Colors.white,
          fontSize: fontSize,
        ),),
      color: Color(0xFF323347),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25)
      ),
      height: height ,
      minWidth: width,
      elevation: 3,
      onPressed: onPressed,
    );
}

class NavBar extends PreferredSize {

  NavBar():
      super(
        preferredSize: Size.fromHeight(95.0),
        child: Stack(
          children: <Widget>[
            AppBar(),
            Padding(
              padding: const EdgeInsets.only(top:30.0, left: 10.0, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.settings, color: Colors.white),
                    iconSize: 64,
                    onPressed: (){print("settings");},
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("MasterMaths",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 40.0,
                          color: Colors.white
                        ),
                      ),
                    ],
                  ),
                  Image.asset("assets/images/IconLogo.png",
                    height: 64,
                    width: 64,)
                ],
              ),
            ),
          ],
        )
      );
}

class StructPage extends Scaffold {

  StructPage({Widget child: null}):
        super(
          appBar: NavBar(),
          body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Color(0xFF9ADFEB), Color(0XFFFFFFFF)]
                )
            ),
            child: child,
          ),
      );
}

class ChampTexte extends Container {

  ChampTexte({String placeholder:null, Widget icon:null, double padding:22.0}):
      super(
        padding: EdgeInsets.only(left:padding),
        width: 400.0,
        decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.all(Radius.circular(2)),
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
        ) ,
        child: TextField(
          style: TextStyle(
              color: Color(0xFFB6AAB6),
              fontSize: 30
          ),
          decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: icon,
              hintText: placeholder,
              hintStyle: TextStyle(
                  fontSize: 30,
                  color: Color(0xFFB6AAB6)
              )
          ),
        ),
      );
}
