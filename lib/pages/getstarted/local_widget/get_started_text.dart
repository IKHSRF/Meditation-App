import 'package:flutter/material.dart';
import 'package:meditation/constant/color.dart';

class GetStartedText extends StatelessWidget {
  const GetStartedText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 20.0,
      children: [
        Text(
          'We are what we do',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.w700,
            color: blackTextColor,
          ),
        ),
        Text(
          'Thousand of people are usign silent moon\n for smalls meditation',
          textAlign: TextAlign.center,
          style: TextStyle(color: greyTextColor),
        )
      ],
    );
  }
}
