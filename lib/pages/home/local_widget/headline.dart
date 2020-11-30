import 'package:flutter/material.dart';
import 'package:meditation/constant/color.dart';

class Headline extends StatelessWidget {
  const Headline({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(
            'assets/images/logo.png',
            width: 168,
            height: 30,
          ),
          Container(
            width: screenSize.width,
            padding: EdgeInsets.symmetric(vertical: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back, Ikhsan',
                  style: TextStyle(
                    fontSize: 24,
                    color: blackTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'We Wish you have a good day',
                  style: TextStyle(color: greyTextColor, fontSize: 16.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
