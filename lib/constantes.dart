import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

double screenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width / 768;
} // récupère les données du device, en l'occurence la largeur de l'écran pour calculer un ratio par rapport à la largeur de l'écran de la maquette
// il suffit donc de faire screenWidht * larrgeur de l'objet sur la maquette pour obtenir exactement le même rendu

class Bouton extends StatelessWidget { // responsive
  final String text;
  final Function onPressed;
  final double width;
  final double height;
  final double fontSize;


  Bouton(this.text, {this.onPressed, this.width = 417, this.height = 71.0, this.fontSize = 30.0}) :super();

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


class NavBar extends PreferredSize {

  NavBar(BuildContext context, {int existImage:0 } ):super (
    preferredSize: Size.fromHeight(screenWidth(context) * 107),
    child: Stack(children: <Widget>[
      AppBar(
        leading: Container(),

      ),
      existImage==1?
      Padding(
        padding: EdgeInsets.only(top: screenWidth(context) * 17.0, left: screenWidth(context) * 10.0, right: screenWidth(context) * 10.0),
        child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.settings, color: Colors.white),
                iconSize: screenWidth(context) * 64,
                onPressed: (){print("settings");},
              ),
            ]
        ),
      )
          :
      Padding(
        padding: EdgeInsets.only(top: screenWidth(context) * 10.0, left: screenWidth(context) * 10.0, right: screenWidth(context) * 10.0),
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


    ),

  );
}



class StructPage extends StatelessWidget {

  final Widget child;
  final int existImage;

  StructPage({this.child, this.existImage=0}): super();

  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        appBar: NavBar(context, existImage: existImage,),
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
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
        ),
      ),
    );
  }
}

class ChampTexte extends StatelessWidget { //responsive //height ?
  final String placeholder;
  final Widget icon;
  final double padding;
  final double fontSize;
  final double width;


  ChampTexte({this.placeholder, this.icon, this.padding = 22.0, this.fontSize = 30.0, this.width = 557.0}): super();

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

class DepliantBouton extends StatelessWidget {
  final String text;
  final Function onPressed;

  DepliantBouton(this.text, {this.onPressed}): super();

  @override
  Widget build(BuildContext context){
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:<Widget>[
          SizedBox(width: 0.0),
          Container( // Pour une raison inconnue la taille du conteneur du bouton est par défaut plus grande que le bouton lui même j'ai donc du l'envelopper dans un containeur de taille identique au bouton
            height: screenWidth(context)*50.0,
            child: Bouton(
              text,
              onPressed: onPressed,
              width: 296.0,
              height: 50.0,
              fontSize: 24.0,
            ),
          )
        ]
    );
  }
}

class ChampReponse extends StatelessWidget { //responsive //height ?
  final bool enabled;
  final String titre;
  final double fontSizeTitre;
  final double fontSizeReponse;
  final double width;
  final Function onChanged;
  final Function onSubmitted;
  final TextEditingController controller;


  ChampReponse({this.titre, this.controller, this.onSubmitted, this.onChanged, this.enabled=true, this.fontSizeTitre = 28.0, this.fontSizeReponse = 80, this.width = 279.0}): super();

  @override
  Widget build(BuildContext context) {
    Color couleur;
    if(enabled) couleur = Color(0xffffffff);else couleur = Color(0xffD4D4D4);

    return Container(
        padding: EdgeInsets.only(top: screenWidth(context) * 5),
        width: width*screenWidth(context),

        decoration: BoxDecoration(
            color: couleur,
            borderRadius: BorderRadius.all(Radius.circular(36)),
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
        ),
        child: Column(
          children: <Widget>[
            if(titre!=null)
            Text(
              titre,
              style: TextStyle(
                color: Color(0xffB6AAB6),
                fontWeight: FontWeight.w600,
                fontSize: fontSizeTitre,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                onSubmitted: onSubmitted,
                controller: controller,
                textAlign: TextAlign.center,
                inputFormatters: <TextInputFormatter>[
                  WhitelistingTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(4)
                ],
                keyboardType: TextInputType.numberWithOptions(decimal: false, signed: false),
                onChanged: onChanged,
                enabled: enabled,
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Color(0xff323347),
                    fontSize: fontSizeReponse
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                ),
              ),
            ),
          ],
        )
    );
  }
}