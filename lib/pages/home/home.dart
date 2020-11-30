import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation/constant/color.dart';
import 'package:meditation/widgets/custom_navbar.dart';
import 'package:meditation/widgets/rectangle_card.dart';
import 'package:meditation/widgets/square_card.dart';
import 'local_widget/headline.dart';
import 'local_widget/recomended_card.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0),
            child: Column(
              children: [
                Headline(screenSize: screenSize),
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SquareCard(
                            assetPath: 'assets/images/basics.svg',
                            isDark: true,
                            title: 'Basics',
                            subtitle: 'COURSE',
                            buttonPress: () {
                              Get.toNamed('/courseDetail');
                            },
                          ),
                          SizedBox(width: 10.0),
                          SquareCard(
                            assetPath: 'assets/images/relaxation.svg',
                            isDark: false,
                            title: 'Relaxation',
                            subtitle: 'MUSIC',
                            buttonPress: () {},
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: [
                          RectangleCard(assetPath: 'assets/images/daily.svg'),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30.0),
                  width: screenSize.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Recomended for you',
                        style: TextStyle(
                          color: blackTextColor,
                          fontSize: 24,
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          child: Row(
                            children: [
                              RecommendedCard(
                                isSVG: false,
                                assetPath: 'assets/images/focus.png',
                                title: 'Focus',
                                subTitle: 'Meditation',
                              ),
                              RecommendedCard(
                                isSVG: true,
                                assetPath: 'assets/images/happynes.svg',
                                title: 'Happiness',
                                subTitle: 'Meditation',
                              ),
                              RecommendedCard(
                                isSVG: false,
                                assetPath: 'assets/images/focus.png',
                                title: 'Focus',
                                subTitle: 'Meditation',
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        homeActive: true,
      ),
    );
  }
}
