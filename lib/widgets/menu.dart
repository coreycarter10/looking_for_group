import 'package:flutter/material.dart';

import '../models/account.dart';
import '../models/games.dart';
import '../models/login.dart';
import '../models/messages.dart';
import '../models/palette.dart' as palette;

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'LFG',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: palette.brass,
                image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/cover.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: const Text('Messages'),
            onTap: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Messages(),
                  ))
            },
          ),
          ListTile(
            leading: Icon(Icons.games),
            title: const Text('Games'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GamesPage(),
                  ));
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: const Text('Account'),
            onTap: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyAccountPage(),
                  ))
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: const Text('Logout'),
            onTap: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ))
            },
          ),
        ],
      ),
    );
  }
}
