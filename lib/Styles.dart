import 'package:flutter/material.dart';
//test
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