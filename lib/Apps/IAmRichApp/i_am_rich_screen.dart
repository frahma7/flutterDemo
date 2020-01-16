import 'package:flutter/material.dart';

class IAmRich extends StatelessWidget {
  static const String id = 'i_am_rich_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("I Am Rich"),
        backgroundColor: Colors.indigo,
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Image(
          image: AssetImage('images/diamond.png'),
        ),
      ),
    );
  }
}
