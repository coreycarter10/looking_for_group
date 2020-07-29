import 'package:flutter/material.dart';

class GameDisplay extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              height: 300,
              width: 150,
              color: Colors.blue,
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 10,)
              ),
            const Text('Game Title'),
          ],
        ),
      ],
    );
  }
}