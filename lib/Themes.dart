import 'package:flutter/material.dart';

enum ThemeKeys {PRIMARY, SECONDARY}

class Themes {
  static final ThemeData primary = ThemeData(
    primaryColor: Colors.green,
  );

  static final ThemeData secondary = ThemeData(
    primaryColor: Colors.grey,
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