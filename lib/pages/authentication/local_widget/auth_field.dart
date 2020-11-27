import 'package:flutter/material.dart';
import 'package:meditation/constant/color.dart';

class AuthField extends StatelessWidget {
  const AuthField({
    Key key,
    @required this.hintText,
    @required this.onChanged,
  }) : super(key: key);

  final String hintText;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30.0),
      decoration: BoxDecoration(
        color: fieldColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(color: greyTextColor),
        ),
      ),
    );
  }
}
