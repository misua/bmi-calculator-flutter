import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

// const labelTextStyle = TextStyle(
//             fontSize: 18.0,
//             color: Color(0xFF8D8E98),
//           );



//! icons and logos
class CardProperty extends StatelessWidget {
 
 CardProperty({this.icon,this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style:kLabelTextStyle, 
        ),
      ],
    );
  }
}
