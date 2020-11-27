import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation/widgets/facebook_button.dart';
import 'package:meditation/widgets/google_button.dart';

class ThirdPartyLogin extends StatelessWidget {
  const ThirdPartyLogin({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 20.0,
      children: [
        ContinueWithFacebook(
          screenSize: screenSize,
          buttonTap: () {
            Get.snackbar('Sorry', 'Fitur Belum Tersedia', colorText: Colors.white, backgroundColor: Colors.red);
          },
        ),
        ContinueWithGoogle(
          screenSize: screenSize,
          buttonTap: () {
            Get.snackbar('Sorry', 'Fitur Belum Tersedia', colorText: Colors.white, backgroundColor: Colors.red);
          },
        ),
      ],
    );
  }
}
