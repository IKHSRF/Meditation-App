import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContinueWithFacebook extends StatelessWidget {
  const ContinueWithFacebook({
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
          color: Color(0xFF7583CA),
        ),
        child: Row(
          children: [
            SvgPicture.asset('assets/icons/facebook logo.svg'),
            Spacer(),
            Text(
              'CONTINUE WITH FACEBOOK',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
