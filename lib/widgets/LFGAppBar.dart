import 'package:flutter/material.dart';

import '../models/account.dart';
import 'menu.dart';
import '../models/palette.dart' as palette;

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: palette.brass,
//    leading: IconButton(
//      icon: const Icon(Icons.menu),
//      color: Colors.black,
//      onPressed: () {
//        NavDrawer();
//      },
//    ),
    actions: <Widget>[
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 250),
            child: Text(
              'Looking For Group',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
        ],
      ),
      IconButton(
        icon: const Icon(Icons.search),
        color: Colors.black,
        onPressed: () {
          /// IMPLEMENT SEARCH BAR
        },
      ),
    ],
  );
}
