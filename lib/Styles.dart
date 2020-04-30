import 'package:flutter/material.dart';

double screenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width / 600;
} // récupère les données du device, en l'occurence la largeur de l'écran sur base de largeur=600 parce que flemme de tout changer

class Bouton extends StatelessWidget { // responsive
  final String text;
  final Function onPressed;
  final double width;
  final double height;
  final double fontSize;


  Bouton(this.text, {this.onPressed, this.width = 325, this.height = 71.0, this.fontSize = 28.0}) :super();

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Text(text,
        style: TextStyle(
            color: Colors.white,
            fontSize: screenWidth(context) * fontSize,
            fontWeight: FontWeight.w400
        ),
      ),
      color: Color(0xFF323347),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(screenWidth(context) * 25)
      ),
      height:  screenWidth(context) * height,
      minWidth: screenWidth(context) * width,
      elevation: 3,
      onPressed: onPressed,
        );
  }
}

//hauteur de navbar constante => pas bon à voir si il est possible de corriger ça sinon il faut mettre la taille de son contenue constant pour eviter les problèmes
class NavBar extends StatelessWidget implements PreferredSizeWidget { //responsive sauf la taille de la NavBar aie aie aie, pourquoi j'avais mis le padding en constante ?
  final Size preferredSize;

  NavBar({this.preferredSize = const Size.fromHeight(95.0)}): super();


  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize: Size.fromHeight(screenWidth(context) * preferredSize.height),
        child: Stack(
          children: <Widget>[
            AppBar(
                automaticallyImplyLeading: false
            ),
            Padding(
              padding: EdgeInsets.only(top: screenWidth(context) * 30.0, left: screenWidth(context) * 10.0, right: screenWidth(context) * 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.settings, color: Colors.white),
                    iconSize: screenWidth(context) * 64,
                    onPressed: (){print("settings");},
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("MasterMaths",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: screenWidth(context) * 40.0,
                            color: Colors.white
                        ),
                      ),
                    ],
                  ),
                  Image.asset("assets/images/IconLogo.png",
                    height: screenWidth(context) * 64,
                    width: screenWidth(context) * 64,)
                ],
              ),
            ),
          ],
        )
    );
  }
}

class StructPage extends Scaffold {

  StructPage({Widget child}):
        super(
          resizeToAvoidBottomInset: false,
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


class ChampTexte extends StatelessWidget { //responsive
  final String placeholder;
  final Widget icon;
  final double padding;
  final double fontSize;
  final double width;


  ChampTexte({this.placeholder, this.icon, this.padding = 22.0, this.fontSize = 28.0, this.width = 435.0}): super();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: screenWidth(context) * padding),
      width: screenWidth(context) * width,

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
            fontSize: screenWidth(context) * fontSize
        ),
        decoration: InputDecoration(

            border: InputBorder.none,
            prefixIcon: icon,
            hintText: placeholder,
            hintStyle: TextStyle(
                fontSize: screenWidth(context) * fontSize,
                color: Color(0xFFB6AAB6)
            )
        ),
      ),
    );
  }
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

class _Depliant extends State<Depliant>{ // pas trop responsive, problème avec les changements de ratio, à voir si c'est genant

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
      mainAxisAlignment: MainAxisAlignment.start,
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