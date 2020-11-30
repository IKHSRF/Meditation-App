import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation/constant/color.dart';

class RecommendedCard extends StatelessWidget {
  const RecommendedCard({
    Key key,
    @required this.isSVG,
    @required this.assetPath,
    @required this.title,
    @required this.subTitle,
  }) : super(key: key);

  final bool isSVG;
  final String assetPath;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: (isSVG) ? SvgPicture.asset(assetPath) : Image.asset(assetPath),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              color: blackTextColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            subTitle,
            style: TextStyle(
              fontSize: 13,
              color: greyTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
