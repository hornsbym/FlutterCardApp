import 'package:flutter/material.dart';
import 'package:intellij_flutter_app/src/HomePage.dart';

/// Point of entry for the application.
void main() => runApp(MyApp());

/// The top-level class for the application.
class MyApp extends StatelessWidget {
  /// Called whenever the application needs to represent itself on the device.
  ///
  /// Analogous to "render" in React.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(0, 0, 0, 1),
      ),
      home: HomePage(),
    );
  }
}