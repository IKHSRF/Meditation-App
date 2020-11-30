import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RectangleCard extends StatelessWidget {
  const RectangleCard({
    Key key,
    @required this.assetPath,
  }) : super(key: key);
  final String assetPath;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Stack(
          children: [
            SvgPicture.asset(
              assetPath,
            ),
            Positioned(
              top: 20,
              left: 30,
              child: Text(
                'Daily Thought',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 30,
              child: Text(
                'Meditation 3-10 MIN',
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 20,
              right: 30,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Icon(Icons.play_arrow),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
