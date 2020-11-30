import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeadlineButton extends StatelessWidget {
  const HeadlineButton({
    Key key,
    @required this.backButtonPress,
  }) : super(key: key);
  final Function backButtonPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Row(
        children: [
          GestureDetector(
            onTap: backButtonPress,
            child: SvgPicture.asset('assets/icons/back button.svg'),
          ),
          Spacer(),
          SvgPicture.asset('assets/icons/favorite button.svg'),
          SizedBox(width: 10.0),
          SvgPicture.asset('assets/icons/download button.svg'),
        ],
      ),
    );
  }
}
