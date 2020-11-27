import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation/pages/authentication/local_widget/account_text.dart';
import 'package:meditation/widgets/purple_button.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 20.0,
      children: [
        PurpleButton(
          text: 'Sign Up',
          buttonTap: () {
            Get.toNamed('/signUp');
          },
        ),
        AccountText(
          screenSize: screenSize,
          text: 'ALREADY HAVE AN ACCOUNT?',
          page: 'LOG IN',
          buttonTap: () {
            Get.toNamed('/signIn');
          },
        ),
      ],
    );
  }
}
