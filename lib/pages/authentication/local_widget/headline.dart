import 'package:flutter/material.dart';
import 'package:meditation/constant/color.dart';

class Headline extends StatelessWidget {
  const Headline({
    Key key,
    @required this.size,
    @required this.headlineText,
  }) : super(key: key);

  final Size size;
  final String headlineText;

  @override
  Widget build(BuildContext context) {
    return Text(
      headlineText,
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: blackTextColor,
      ),
    );
  }
}
