import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation/pages/authentication/local_widget/account_text.dart';
import 'package:meditation/pages/authentication/local_widget/auth_headline.dart';
import 'local_widget/email_login_hint.dart';
import 'local_widget/signin_field.dart';
import 'local_widget/third_party_login.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0),
          width: screenSize.width,
          child: Column(
            children: [
              Wrap(
                runSpacing: 30.0,
                alignment: WrapAlignment.center,
                children: [
                  //back button and headline
                  BackandHeadline(
                    headlineText: 'Welcome Back!',
                    buttonTap: () {
                      Get.back();
                    },
                    size: screenSize,
                  ),
                  //button for login with facebook and google
                  ThirdPartyLogin(screenSize: screenSize),
                  //hint for email login
                  EmailLoginHint(hintText: 'OR LOG IN WITH EMAIL'),
                  //login field
                  SigninField(),
                ],
              ),
              Spacer(),
              //bottom button for sign up
              AccountText(
                screenSize: screenSize,
                text: "DON'T HAVE AN ACCOUNT",
                page: 'SIGN UP',
                buttonTap: () {
                  Get.toNamed('/signUp');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
