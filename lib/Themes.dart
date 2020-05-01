import 'package:flutter/material.dart';

enum ThemeKeys {PRIMARY, SECONDARY}

class Themes {
  static final ThemeData primary = ThemeData(
    primaryColor: Colors.black,
    primaryColorLight: Colors.green,
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.yellow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      )
    )
  );

  static final ThemeData secondary = ThemeData(
    primaryColor: Colors.grey,
    primaryColorLight: Colors.lightBlue,
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.white
    )
  );

  static ThemeData getThemeFromKey(ThemeKeys themeKey) {
    switch(themeKey) {
      case ThemeKeys.PRIMARY:
        return primary;
      case ThemeKeys.SECONDARY:
        return secondary;
    }
  }
}