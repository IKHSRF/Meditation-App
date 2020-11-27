import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeadlineIconImage extends StatelessWidget {
  const HeadlineIconImage({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenSize.width,
      child: Wrap(
        alignment: WrapAlignment.center,
        runSpacing: screenSize.height * 0.06,
        children: [
          Image.asset(
            'assets/images/logo.png',
            width: 168,
            height: 30,
          ),
          SvgPicture.asset(
            'assets/images/svg_women.svg',
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
