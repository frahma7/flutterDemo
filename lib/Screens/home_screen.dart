import 'package:flutter_demo_app/Apps/BMICalculatorApp/screens/input_page.dart';
import 'package:flutter_demo_app/Apps/BitCoinTrackerApp/price_screen.dart';
import 'package:flutter_demo_app/Apps/DiceRoller/dice.dart';
import 'package:flutter_demo_app/Apps/IAmRichApp/i_am_rich_screen.dart';
import 'package:flutter_demo_app/Apps/Destiny/main.dart';
import 'package:flutter_demo_app/Apps/QuizlierApp/quizlier_screen.dart';
import '../Apps/WeatherApp/screens/loading_screen.dart';
import 'package:flutter_demo_app/Apps/MagicBall/magicball_screen.dart';
import '../Apps/MyCardApp/mycard_screen.dart';
import 'package:flutter_demo_app/Apps/XylaphoneApp/xylaphone_screen.dart';
import '../CustomWidgets/appicon_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Menu'),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text('I Am Rich'),
                      AppIconButton(
                        iconLocation: 'money',
                        routeName: IAmRich.id,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('Bitcoin Price'),
                      AppIconButton(
                        iconLocation: 'bitcoin',
                        routeName: PriceScreen.id,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('BMI Calc'),
                      AppIconButton(
                        iconLocation: 'bmi',
                        routeName: BMICalculator.id,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('Weather'),
                      AppIconButton(
                        iconLocation: 'weather',
                        routeName: LoadingScreen.id,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text('Destiny'),
                      AppIconButton(
                        iconLocation: 'destiny',
                        routeName: Destiny.id,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('Dice Roller'),
                      AppIconButton(
                        iconLocation: 'dice',
                        routeName: DiceApp.id,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('Magic Ball'),
                      AppIconButton(
                        iconLocation: 'magic',
                        routeName: BallPage.id,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('My Card'),
                      AppIconButton(
                        iconLocation: 'mycard',
                        routeName: MyCard.id,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text('Quizlier'),
                      AppIconButton(
                        iconLocation: 'quizlier',
                        routeName: Quizzler.id,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('Xylaphone'),
                      AppIconButton(
                        iconLocation: 'xylaphone',
                        routeName: XylophoneApp.id,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
