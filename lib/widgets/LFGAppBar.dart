import 'package:flutter/material.dart';

import '../models/menu.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.yellow,
    leading: IconButton(
      icon: const Icon(Icons.menu),
      color: Colors.grey,
      onPressed: () {
        Menu();
      },
    ),
    actions: <Widget>[
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 250),
            child: Text(
              'Looking For Group',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
        ],
      ),
      IconButton(
        icon: const Icon(Icons.search),
        color: Colors.grey,
        onPressed: () {
          /// BRING UP SEARCH BAR
        },
      ),
    ],
  );
}
