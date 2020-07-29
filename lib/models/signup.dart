import 'package:flutter/material.dart';

import '../models/palette.dart' as palette;
import '../widgets/LFGAppBar.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  static const textFieldBorder = UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.black),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: buildAppBar(context),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 250, right: 250),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 100),
                child: DecoratedBox(
                  decoration: const BoxDecoration(),
                  child: Text(
                    'Welcome to Looking For Group!',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
              TextFormField(
                cursorColor: palette.brass,
                controller: _usernameController,
                decoration: const InputDecoration(
                  enabledBorder: textFieldBorder,
                  focusedBorder: textFieldBorder,
                  labelText: 'Username',
                ),
              ),
              TextField(
                cursorColor: palette.brass,
                controller: _emailController,
                decoration: const InputDecoration(
                  enabledBorder: textFieldBorder,
                  focusedBorder: textFieldBorder,
                  labelText: 'Email',
                ),
              ),
              TextFormField(
                cursorColor: palette.brass,
                controller: _passwordController,
                decoration: InputDecoration(
                  enabledBorder: textFieldBorder,
                  focusedBorder: textFieldBorder,
                  labelText: 'Password',
                  fillColor: palette.brass,
                ),
                obscureText: true,
              ),
              TextFormField(
                cursorColor: palette.brass,
                controller: _confirmPasswordController,
                decoration: InputDecoration(
                  enabledBorder: textFieldBorder,
                  focusedBorder: textFieldBorder,
                  labelText: 'Confirm Password',
                  fillColor: palette.brass,
                ),
                obscureText: true,
              ),
              RaisedButton(
                child: Text(
                  'Create account',
                  style: TextStyle(color: palette.brass),
                ),
                color: Colors.black,
                elevation: 8.0,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
