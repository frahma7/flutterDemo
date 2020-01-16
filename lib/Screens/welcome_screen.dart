import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_demo_app/Screens/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  static const String id = 'welcome_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: double.infinity,
          height: 400,
//          color: Colors.blue,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(40),
          child: SizedBox(
            width: double.infinity,
            child: TyperAnimatedTextKit(
              isRepeatingAnimation: false,
              text: [
                "Welcome!",
                "This is a demo of a few apps I worked on",
                "Feel free to try all of them out",
                "Enjoy!",
              ],
              textStyle: TextStyle(
                  fontSize: 30.0,
                  fontFamily: "Agne",
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
              onFinished: () {
                Navigator.pushReplacementNamed(context, HomeScreen.id);
              },
            ),
          ),
        ),
      ),
    );
  }
}
