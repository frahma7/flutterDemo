import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class XylophoneApp extends StatelessWidget {
  static const String id = 'xylaphone_screen';
  final List<Color> colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.teal,
    Colors.blue,
    Colors.purple
  ];

  Expanded buildKey({Color noteColor, int noteNum}) {
    return Expanded(
      child: FlatButton(
        color: noteColor,
        onPressed: () {
          playSound(noteNum);
        },
      ),
    );
  }

  void playSound(int noteNum) {
    final player = AudioCache();
    player.play('note$noteNum.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              for (int i = 0; i < colors.length; i++)
                buildKey(noteColor: colors[i], noteNum: i + 1),
            ],
          ),
        ),
      ),
    );
  }
}
