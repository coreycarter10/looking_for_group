import 'package:flutter/material.dart';
import 'package:lookingforgroup/models/account.dart';

import '../models/signup.dart';
import '../widgets/LFGAppBar.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  static const textFieldBorder = UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.yellow),
  );

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.1, 0.5, 0.7, 0.9],
          colors: [
            Colors.grey[800],
            Colors.grey[600],
            Colors.yellow[400],
            Colors.yellow,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: buildAppBar(),
        body: Center(
          child: Padding(
            /// TODO: MAKE RESPONSIVE
            padding: const EdgeInsets.only(left: 250, right: 250),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  cursorColor: Colors.yellow,
                  controller: _usernameController,
                  decoration: InputDecoration(
                    enabledBorder: textFieldBorder,
                    focusedBorder: textFieldBorder,
                    labelText: 'Username or email',
                  ),
                ),
                TextField(
                  cursorColor: Colors.yellow,
                  controller: _passwordController,
                  decoration: InputDecoration(
                    enabledBorder: textFieldBorder,
                    focusedBorder: textFieldBorder,
                    labelText: 'Password',
                    fillColor: Colors.yellow,
                  ),
                  obscureText: true,
                ),
                ButtonBar(
                  children: <Widget>[
                    RaisedButton(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.grey),
                      ),
                      color: Colors.yellow,
                      elevation: 8.0,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyAccountPage(),
                            ));
                      },
                    ),
                    RaisedButton(
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.yellow),
                      ),
                      color: Colors.grey,
                      elevation: 8.0,
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}