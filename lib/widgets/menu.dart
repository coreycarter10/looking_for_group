import 'package:flutter/material.dart';

import '../models/account.dart';
import '../models/login.dart';
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
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/cover.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Messages'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.games),
            title: Text('Games'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Account'),
            onTap: () => {Navigator.push(context, MaterialPageRoute(
              builder: (context) => MyAccountPage(),
            ))},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.push(context, MaterialPageRoute(
              builder: (context) => LoginPage(),
            ))},
          ),
        ],
      ),
    );
  }
}