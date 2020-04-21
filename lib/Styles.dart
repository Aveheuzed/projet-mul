import 'package:flutter/material.dart';

const kToolbarHeight = 195.0;

class ButtonApp extends MaterialButton {

  ButtonApp(String text, {width : 420.0, height : 71.0,  onPressed, fontSize : 30.0}):
    super(
      child: Text(text,
        style: TextStyle(
          color: Colors.white,
          fontSize: fontSize,
        ),),
      color: Color.fromRGBO(51, 51, 71, 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25)
      ),
      height: height ,
      minWidth: width,
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

  StructPage({List<Widget> children: const[]}):
      super(
        appBar: new NavBar(),
        body: Center(
            child: Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [Color(0xFF9ADFEB), Color(0XFFFFFFFF)]
                  )
              ),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: children,
              ),
            )
        ),
      );
}
