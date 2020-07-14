import 'package:flutter/material.dart';

import 'package:lookingforgroup/models/account.dart';

import '../models/menu.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: const Color(0xFFB5A642),
    leading: IconButton(
      icon: const Icon(Icons.menu),
      color: Colors.black,
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
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MyAccountPage(),
              ));
        },
      ),
    ],
  );
}
