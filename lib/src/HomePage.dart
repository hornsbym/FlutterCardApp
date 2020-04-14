import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intellij_flutter_app/Themes.dart';

import 'CardTable.dart';
import 'CustomTheme.dart';

/// Represents the Home screen of the application.
///
/// Currently, there is only one screen with the application.
class HomePage extends StatelessWidget {
  final CardTable _cards = CardTable();

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: theme.primaryColor,
          title: Text("Card app"),
        ),
        backgroundColor: theme.primaryColor,
        floatingActionButton: IconButton(
          color: Colors.blue,
          icon: Icon(Icons.autorenew),
          onPressed: () {
            print("Tapped button");
            CustomTheme.instanceOf(context).changeTheme(ThemeKeys.PRIMARY);
          },
        ),
        body: Center(
          child: _cards,
        ));
  }
}
