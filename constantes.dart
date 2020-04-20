import 'package:flutter/material.dart';


final kHintTextStyle = TextStyle(
  color: Colors.grey,
  fontFamily: 'OpenSans',

);

final kLabelStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
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
// ignore: camel_case_types
class imageLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage("images/logofinale.png");
    Image image = Image(image :assetImage);
    return Container(child : image ,height: 430,);
  }
}
TextStyle styleDeBoutton=TextStyle(
  color: Colors.white,
  fontFamily: 'openSans',
  fontSize: 28,fontWeight: FontWeight.w400,
  letterSpacing:1,
);
