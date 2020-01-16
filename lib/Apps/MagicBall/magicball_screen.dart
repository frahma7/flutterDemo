import 'package:flutter/material.dart';
import 'dart:math';

class BallPage extends StatelessWidget {
  static const String id = 'ball_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Ask Me Anything'),
      ),
      body: MagicEightBall(),
      backgroundColor: Colors.blue,
    );
  }
}

class MagicEightBall extends StatefulWidget {
  @override
  _MagicEightBallState createState() => _MagicEightBallState();
}

class _MagicEightBallState extends State<MagicEightBall> {
  int newImage = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            newImage = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$newImage.png'),
      ),
    );
  }
}
