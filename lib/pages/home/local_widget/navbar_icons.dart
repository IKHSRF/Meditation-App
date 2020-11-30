import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation/constant/color.dart';

class NavBarIcon extends StatelessWidget {
  const NavBarIcon({
    Key key,
    @required this.isActive,
    @required this.iconPath,
    @required this.navbarText,
  }) : super(key: key);
  final bool isActive;
  final String iconPath;
  final String navbarText;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 40,
            height: 40,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: isActive ? Color(0xFF8E97FD) : Colors.white,
              borderRadius: BorderRadius.circular(18),
            ),
            child: SvgPicture.asset(
              iconPath,
              color: isActive ? Colors.white : Color(0xFFA0A3B1),
            ),
          ),
          Text(
            navbarText,
            style: TextStyle(
              color: isActive ? Color(0xFF8E97FD) : greyTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
