import 'package:flutter/material.dart';
import 'package:meditation/constant/color.dart';

class PurpleButton extends StatelessWidget {
  const PurpleButton({
    Key key,
    @required this.text,
    @required this.buttonTap,
  }) : super(key: key);
  final String text;
  final Function buttonTap;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: buttonTap,
      child: Container(
        alignment: Alignment.center,
        width: screenSize.width,
        height: 53,
        decoration: BoxDecoration(
          color: purpleColor,
          borderRadius: BorderRadius.circular(38),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
