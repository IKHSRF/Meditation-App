import 'package:flutter/material.dart';
import 'package:meditation/constant/color.dart';

class ListeningSection extends StatelessWidget {
  const ListeningSection({
    Key key,
    @required this.isActive,
    @required this.title,
    @required this.time,
  }) : super(key: key);
  final bool isActive;
  final String title;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      child: Row(
        children: [
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isActive ? purpleColor : Colors.white,
              border: isActive ? null : Border.all(color: greyTextColor),
            ),
            child: Icon(
              Icons.play_arrow,
              color: isActive ? Colors.white : greyTextColor,
            ),
          ),
          SizedBox(width: 20.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  color: blackTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                time,
                style: TextStyle(
                  color: greyTextColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
