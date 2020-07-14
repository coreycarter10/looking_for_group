import 'package:flutter/material.dart';
import 'package:lookingforgroup/widgets/LFGAppBar.dart';

import '../models/palette.dart' as palette;

class Account {
  String username;
  String email;
  String password;
}

class MyAccountPage extends StatefulWidget {
  @override
  _MyAccountPageState createState() => _MyAccountPageState();
}

class _MyAccountPageState extends State<MyAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: palette.brass,
      appBar: buildAppBar(context),
      body: Center(
        child: Column(
          children: <Widget>[
            ButtonBar(
              children: <Widget>[
                RaisedButton(
                  child: Text('Change username'),
                  color: Colors.black,
                  onPressed: () {},
                ),
                RaisedButton(
                  child: Text('Change email'),
                  color: Colors.black,
                  onPressed: () {},
                ),
                RaisedButton(
                  child: Text('Change password'),
                  color: Colors.black,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
