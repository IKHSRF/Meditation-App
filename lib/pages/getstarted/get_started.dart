import 'package:flutter/material.dart';
import 'local_widget/background_image.dart';
import 'local_widget/get_started_text.dart';
import 'local_widget/headline_icon.dart';
import 'local_widget/signup_button.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            BackgroundImage(screenSize: screenSize),
            Container(
              padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0.0),
              child: Column(
                children: [
                  Expanded(
                    child: HeadlineIconImage(screenSize: screenSize),
                    flex: 3,
                  ),
                  Expanded(
                    child: GetStartedText(),
                  ),
                  Expanded(
                    child: SignUpButton(screenSize: screenSize),
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
