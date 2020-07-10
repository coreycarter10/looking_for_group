import 'package:flutter/material.dart';

enum MenuList {
  Home,
  Games,
  MyAccount,
  Settings,
}

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      child: Row(
        children: <Widget>[
          ButtonBar(),
        ],
      ),
    );
  }
}
