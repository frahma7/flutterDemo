import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  final String routeName;
  final String iconLocation;

  AppIconButton({@required this.routeName, @required this.iconLocation});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        Navigator.pushNamed(context, routeName);
      },
      elevation: 6,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(width: 70, height: 70),
      child: CircleAvatar(
        backgroundColor: Colors.blueAccent,
        radius: 700,
        backgroundImage: AssetImage('images/$iconLocation.png'),
      ),
    );
  }
}
