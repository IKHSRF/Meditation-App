import 'package:flutter/material.dart';
import 'package:meditation/constant/color.dart';

class EmailLoginHint extends StatelessWidget {
  const EmailLoginHint({
    Key key,
    @required this.hintText,
  }) : super(key: key);
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Text(
      hintText,
      style: TextStyle(
        color: greyTextColor,
        fontSize: 14,
      ),
    );
  }
}
