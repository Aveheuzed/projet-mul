import 'package:flutter/material.dart';

const PrimaryColor = const Color(0xff323347);
const BackgroundColor = const Color(0xff9ADFEB);

class MyTheme{
  static final ThemeData defaultTheme = _buildTheme();

  static ThemeData _buildTheme(){
    final ThemeData base = ThemeData.light();

    return base.copyWith(
      primaryColor: PrimaryColor,



      buttonTheme: base.buttonTheme.copyWith(
        buttonColor: PrimaryColor
      )
    );
  }
}