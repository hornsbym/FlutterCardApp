import 'package:flutter/material.dart';
import 'package:intellij_flutter_app/src/CustomTheme.dart';
import 'package:intellij_flutter_app/src/HomePage.dart';

import 'Themes.dart';

/// Point of entry for the application.
void main() => runApp(
  CustomTheme(
    initialThemeKey: ThemeKeys.SECONDARY,
    child: MyApp()
  ));

/// The top-level class for the application.
class MyApp extends StatelessWidget {
  /// Called whenever the application needs to represent itself on the device.
  ///
  /// Analogous to "render" in React.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: CustomTheme.of(context),
      home: HomePage(),
    );
  }
}