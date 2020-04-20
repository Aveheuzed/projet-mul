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
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Ma super App"),
        centerTitle: true,
        elevation: 15,
      ),

      body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new ButtonApp("test bouton", onPressed: (){
                print("ok");
              })
            ],
          )
      ),
    );
  }


}

