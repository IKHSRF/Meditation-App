import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:meditation/constant/color.dart';

import 'local_widget/headline_button.dart';
import 'local_widget/listening_section.dart';
import 'local_widget/narrator.dart';

class CourseDetail extends StatefulWidget {
  @override
  _CourseDetailState createState() => _CourseDetailState();
}

class _CourseDetailState extends State<CourseDetail> {
  bool isMale = true;
  bool isFemale = false;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    width: screenSize.width,
                    height: screenSize.height * 0.35,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      child: SvgPicture.asset(
                        'assets/images/sun.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: screenSize.width,
                    padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            'Basics',
                            style: TextStyle(
                              fontSize: 34,
                              color: blackTextColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 15.0),
                          child: Text(
                            'COURSE',
                            style: TextStyle(
                              color: greyTextColor,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 15.0),
                          child: Text(
                            'Ease the mind into a restful night’s sleep\nwith these deep, amblent tones.',
                            style: TextStyle(
                              color: greyTextColor,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 30.0),
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/icons/favorite icon.svg'),
                              SizedBox(width: 10.0),
                              Text('20.234 Favorites'),
                              SizedBox(width: 40.0),
                              SvgPicture.asset('assets/icons/headphone.svg'),
                              SizedBox(width: 10.0),
                              Text('32.103 Listening'),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 40.0),
                          child: Text(
                            'Pick A Narrator',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isMale = true;
                                    isFemale = false;
                                  });
                                },
                                child: Narrator(
                                  voiceTitle: 'MALE VOICE',
                                  isActive: isMale,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isFemale = true;
                                    isMale = false;
                                  });
                                },
                                child: Narrator(
                                  voiceTitle: 'FEMALE VOICE',
                                  isActive: isFemale,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ListeningSection(
                          isActive: true,
                          time: '10 MIN',
                          title: 'Focus Attention',
                        ),
                        ListeningSection(
                          isActive: false,
                          time: '5 MIN',
                          title: 'Body Scan',
                        ),
                        ListeningSection(
                          isActive: false,
                          time: '3 MIN',
                          title: 'Making Happiness',
                        ),
                      ],
                    ),
                  )
                ],
              ),
              HeadlineButton(
                backButtonPress: () => Get.back(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
