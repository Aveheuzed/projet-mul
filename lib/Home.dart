import 'package:flutter/material.dart';
import 'package:testappmult/Styles.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _Home();
  }
}

class _Home extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return StructPage(
      children: <Widget>[
        new ButtonApp("bouton", onPressed: (){
          print("ok");
        })
      ],
    );
  }


}

