import 'package:flutter/material.dart';
import 'package:lookingforgroup/utils/utils.dart';

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
    borderSide: BorderSide(color: Colors.yellow),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: buildAppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 250, right: 250),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 100),
                child: DecoratedBox(
                  decoration: BoxDecoration(),
                  child: Text(
                    'Welcome to Looking For Group!',
                    style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
              TextFormField(
                cursorColor: Colors.yellow,
                controller: _usernameController,
                decoration: InputDecoration(
                  enabledBorder: textFieldBorder,
                  focusedBorder: textFieldBorder,
                  labelText: 'Username',
                ),
              ),
              TextField(
                cursorColor: Colors.yellow,
                controller: _emailController,
                decoration: InputDecoration(
                  enabledBorder: textFieldBorder,
                  focusedBorder: textFieldBorder,
                  labelText: 'Email',
                ),
              ),
              TextFormField(
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
              TextFormField(
                cursorColor: Colors.yellow,
                controller: _confirmPasswordController,
                decoration: InputDecoration(
                  enabledBorder: textFieldBorder,
                  focusedBorder: textFieldBorder,
                  labelText: 'Confirm Password',
                  fillColor: Colors.yellow,
                ),
                obscureText: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
