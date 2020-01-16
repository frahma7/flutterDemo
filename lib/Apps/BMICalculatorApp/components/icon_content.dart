import 'package:flutter/material.dart';
import '../utilities/constants.dart';

class IconContent extends StatelessWidget {
  final IconData genderIcon;
  final String genderString;

  IconContent({@required this.genderIcon, @required this.genderString});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          genderIcon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          genderString,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
