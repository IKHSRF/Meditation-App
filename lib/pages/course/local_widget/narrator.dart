import 'package:flutter/material.dart';
import 'package:meditation/constant/color.dart';

class Narrator extends StatelessWidget {
  const Narrator({
    Key key,
    @required this.voiceTitle,
    @required this.isActive,
  }) : super(key: key);
  final String voiceTitle;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 40.0, top: 30.0),
      child: Column(
        children: [
          Text(
            voiceTitle,
            style: TextStyle(
              color: isActive ? purpleColor : greyTextColor,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 5.0),
          Container(
            width: 50,
            height: 2,
            color: isActive ? purpleColor : Colors.white,
          )
        ],
      ),
    );
  }
}
