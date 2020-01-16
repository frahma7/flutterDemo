import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_demo_app/Apps/BMICalculatorApp/screens/input_page.dart';
import 'package:flutter_demo_app/Apps/BitCoinTrackerApp/price_screen.dart';
import 'package:flutter_demo_app/Apps/DiceRoller/dice.dart';
import 'package:flutter_demo_app/Apps/IAmRichApp/i_am_rich_screen.dart';
import 'package:flutter_demo_app/Apps/Destiny/main.dart';
import 'package:flutter_demo_app/Screens/home_screen.dart';
import 'package:flutter_demo_app/Apps/WeatherApp/screens/loading_screen.dart';
import 'package:flutter_demo_app/Apps/MagicBall/magicball_screen.dart';
import 'package:flutter_demo_app/Apps/MyCardApp/mycard_screen.dart';
import 'package:flutter_demo_app/Apps/XylaphoneApp/xylaphone_screen.dart';
import 'package:flutter_demo_app/Apps/QuizlierApp/quizlier_screen.dart';
import 'Screens/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
//      theme: ThemeData.dark(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        MyCard.id: (context) => MyCard(),
        XylophoneApp.id: (context) => XylophoneApp(),
        BallPage.id: (context) => BallPage(),
        LoadingScreen.id: (context) => LoadingScreen(),
        IAmRich.id: (context) => IAmRich(),
        PriceScreen.id: (context) => PriceScreen(),
        BMICalculator.id: (context) => BMICalculator(),
        Destiny.id: (context) => Destiny(),
        DiceApp.id: (context) => DiceApp(),
        Quizzler.id: (context) => Quizzler(),
      },
    );
  }
}
