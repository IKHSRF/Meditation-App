import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation/constant/color.dart';
import 'package:meditation/pages/authentication/local_widget/auth_field.dart';
import 'package:meditation/widgets/purple_button.dart';

class SigninField extends StatelessWidget {
  const SigninField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 20.0,
      alignment: WrapAlignment.center,
      children: [
        AuthField(
          hintText: 'Email Address',
          onChanged: (value) {},
        ),
        AuthField(
          hintText: 'Password',
          onChanged: (value) {},
        ),
        PurpleButton(
          text: 'LOG IN',
          buttonTap: () {
            Get.toNamed('/home');
          },
        ),
        Text(
          'Forgot Password?',
          style: TextStyle(
            color: blackTextColor,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
