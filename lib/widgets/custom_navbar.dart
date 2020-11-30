import 'package:flutter/material.dart';
import 'package:meditation/pages/home/local_widget/navbar_icons.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key key,
    this.homeActive = false,
    this.sleepActive = false,
    this.meditateActive = false,
    this.musicActive = false,
    this.personActive = false,
  }) : super(key: key);
  final bool homeActive;
  final bool sleepActive;
  final bool meditateActive;
  final bool musicActive;
  final bool personActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavBarIcon(
            isActive: homeActive,
            iconPath: 'assets/icons/home.svg',
            navbarText: 'Home',
          ),
          NavBarIcon(
            isActive: sleepActive,
            iconPath: 'assets/icons/moon.svg',
            navbarText: 'Sleep',
          ),
          NavBarIcon(
            isActive: meditateActive,
            iconPath: 'assets/icons/bell.svg',
            navbarText: 'Meditate',
          ),
          NavBarIcon(
            isActive: musicActive,
            iconPath: 'assets/icons/musix.svg',
            navbarText: 'Music',
          ),
          NavBarIcon(
            isActive: personActive,
            iconPath: 'assets/icons/person.svg',
            navbarText: 'Ikhsan',
          ),
        ],
      ),
    );
  }
}
