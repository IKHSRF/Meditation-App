import 'package:flutter/material.dart';
import 'package:meditation/pages/authentication/local_widget/button_back.dart';
import 'package:meditation/pages/authentication/local_widget/headline.dart';

class BackandHeadline extends StatelessWidget {
  const BackandHeadline({
    Key key,
    @required this.headlineText,
    @required this.buttonTap,
    @required this.size,
  }) : super(key: key);
  final String headlineText;
  final Function buttonTap;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        ButtonBack(buttonTap: buttonTap),
        Headline(size: size, headlineText: headlineText),
      ],
    );
  }
}
