import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  final ListView items;

  MenuDrawer(this.items);

  @override 
  Widget build(BuildContext context) {
    return Drawer(
      child: items
    );
  }
}