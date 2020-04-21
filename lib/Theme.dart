import 'package:flutter/material.dart';

const PrimaryColor = const Color(0xff323347);
const BackgroundColor = const Color(0xff9ADFEB);

class MyTheme{
  static final ThemeData defaultTheme = _buildTheme();

  static ThemeData _buildTheme(){
    final ThemeData base = ThemeData.light();

    return ThemeData(
      fontFamily: 'Segoe UI',
      splashColor: Colors.transparent ,
      highlightColor: Colors.transparent,
      primaryColor: PrimaryColor,
      backgroundColor: BackgroundColor,
      buttonTheme: base.buttonTheme.copyWith(
        buttonColor: PrimaryColor,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
    );
  }
}