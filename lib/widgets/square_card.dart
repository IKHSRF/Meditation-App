import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation/constant/color.dart';

class SquareCard extends StatelessWidget {
  const SquareCard({
    Key key,
    @required this.assetPath,
    @required this.isDark,
    @required this.title,
    @required this.subtitle,
    @required this.buttonPress,
  }) : super(key: key);
  final String assetPath;
  final bool isDark;
  final String title;
  final String subtitle;
  final Function buttonPress;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          children: [
            SvgPicture.asset(
              assetPath,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 80,
              left: 20,
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: isDark ? Color(0xFFF7E8D0) : blackTextColor,
                ),
              ),
            ),
            Positioned(
              top: 100,
              left: 20,
              child: Text(
                subtitle,
                style: TextStyle(
                  color: isDark ? Color(0xFFF7E8D0) : blackTextColor,
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 10,
              child: Row(
                children: [
                  Text(
                    '3-10 MIN',
                    style: TextStyle(
                      color: isDark ? Color(0xFFF7E8D0) : blackTextColor,
                    ),
                  ),
                  SizedBox(width: 15),
                  GestureDetector(
                    onTap: buttonPress,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 7.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(29),
                        color: isDark ? Color(0xFFEBEAEC) : Color(0xFF263238),
                      ),
                      child: Text(
                        'START',
                        style: TextStyle(
                          color: isDark ? blackTextColor : Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
