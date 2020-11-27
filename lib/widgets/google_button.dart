import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation/constant/color.dart';

class ContinueWithGoogle extends StatelessWidget {
  const ContinueWithGoogle({
    Key key,
    @required this.screenSize,
    @required this.buttonTap,
  }) : super(key: key);

  final Size screenSize;
  final Function buttonTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTap,
      child: Container(
        width: screenSize.width,
        height: 53,
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(38),
          border: Border.all(color: Color(0xFFEBEAEC)),
        ),
        child: Row(
          children: [
            SvgPicture.asset('assets/images/google logo.svg'),
            Spacer(),
            Text(
              'CONTINUE WITH GOOGLE',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: blackTextColor,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
