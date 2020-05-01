import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intellij_flutter_app/src/MenuDrawer.dart';
import 'package:intellij_flutter_app/src/WelcomePage.dart';

import 'CardTable.dart';
import 'CustomTheme.dart';

/// Represents the Home screen of the application.
///
/// Currently, there is only one screen with the application.
class HomePage extends StatefulWidget {
  final CardTable _cards = CardTable();

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  Widget body;

  @override
  void initState() {
    super.initState();

    body = WelcomePage();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: theme.primaryColor,
          title: Text("Card app"),
        ),
        drawer: MenuDrawer(
          ListView(
            children: <Widget>[
              ListTile(
                title: Text("Welcome page"),
                onTap: () {
                  setState(() {
                    body = WelcomePage();
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("Card page"),
                onTap: () {
                  setState(() {
                    body = widget._cards;
                  });
                  Navigator.pop(context);
                },
              ),
            ],
          )
        ),
        backgroundColor: theme.primaryColorLight,
        floatingActionButton: FloatingActionButton(
          backgroundColor: theme.primaryColor,
          child: Icon(Icons.autorenew),
          onPressed: () {
            CustomTheme.instanceOf(context).changeTheme();
          },
        ),
        body: Center(
          child: body,
        ));
  }

}
