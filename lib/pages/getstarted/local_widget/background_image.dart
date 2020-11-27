import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenSize.height * 0.6,
      child: SvgPicture.asset(
        'assets/images/background_getstarted.svg',
        fit: BoxFit.fill,
      ),
    );
  }
}
