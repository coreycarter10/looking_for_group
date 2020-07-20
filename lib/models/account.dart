import 'package:flutter/material.dart';

import '../widgets/LFGAppBar.dart';
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
        child: Expanded(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Card(
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).primaryColor,
                            width: 10,
                          ),
                        ),
                      ),
                      RaisedButton(
                        child: Text('Change username'),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).primaryColor,
                            width: 10,
                          ),
                        ),
                      ),
                      RaisedButton(
                        child: Text('Change email'),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).primaryColor,
                            width: 10,
                          ),
                        ),
                      ),
                      RaisedButton(
                        child: Text('Change password'),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
