import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CardTable.dart';

/// Represents the Home screen of the application.
///
/// Currently, there is only one screen with the application.
class HomePage extends StatelessWidget {
  final CardTable _cards = CardTable();
  BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
        appBar: AppBar(
          title: Text("Card app"),
        ),
        backgroundColor: Colors.lightGreen,
        body: Center(
          child: _cards,
        ));
  }
}
