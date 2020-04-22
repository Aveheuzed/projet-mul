import 'package:flutter/material.dart';

const kToolbarHeight = 195.0; // inutile ?

double screenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
} // récupère les données du device, en l'occurence la largeur de l'écran

class Bouton extends MaterialButton {

  Bouton(String text, {width : 325.0, height : 71.0,  onPressed, fontSize : 28.0}):
    super(
      child: Text(text,
        style: TextStyle(
          color: Colors.white,
          fontSize: fontSize,
          fontWeight: FontWeight.w400
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
            AppBar(
                automaticallyImplyLeading: false
            ),
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
            constraints: BoxConstraints.expand(), // étend l'arrière plan, important pour les écrans scrollables
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
        width: 435.0,

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
            fontSize: 28
          ),
          decoration: InputDecoration(

            border: InputBorder.none,
            prefixIcon: icon,
            hintText: placeholder,
            hintStyle: TextStyle(
                fontSize: 28,
                color: Color(0xFFB6AAB6)
            )
          ),
        ),
      );
}

class Depliant extends StatefulWidget{
  final String titre;
  final List<Widget> options;

  Depliant({
    this.titre,
    this.options,
  });


  @override
  _Depliant createState() => _Depliant();
}

class _Depliant extends State<Depliant>{

  List<Widget> child;
  bool etat;

  @override
  void initState() {
    super.initState();
    child =[];
    child.add(
      Bouton(
        widget.titre,
        onPressed: deplier,
      )
    );
    etat = false;
  }

  void deplier(){
    setState(() {
      if (etat == false) {
        child.add(
          Column(
            children: widget.options,
          )
        );
        etat = true;
      }
      else {
        child = [];
        child.add(
            Bouton(
              widget.titre,
              onPressed: deplier,
            )
        );
        etat = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: child
    );
  }
}

class DepliantBouton extends Row {

  DepliantBouton (String text, {onPressed}):
    super(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children:<Widget>[
        SizedBox(width: 0.0),
        Bouton(
          text,
          onPressed: onPressed,
          width: 230.0,
          height: 50.0,
        )
      ]
    );
}