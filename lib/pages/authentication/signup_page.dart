import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation/pages/authentication/local_widget/auth_headline.dart';
import 'package:meditation/pages/authentication/local_widget/email_login_hint.dart';
import 'package:meditation/pages/authentication/local_widget/third_party_login.dart';
import 'package:meditation/widgets/purple_button.dart';

import 'local_widget/privay_policy.dart';
import 'local_widget/signup_field.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool policy = false;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0),
          width: screenSize.width,
          child: Wrap(
            runSpacing: 30.0,
            alignment: WrapAlignment.center,
            children: [
              BackandHeadline(
                headlineText: 'Create your account',
                buttonTap: () {
                  Get.back();
                },
                size: screenSize,
              ),
              ThirdPartyLogin(screenSize: screenSize),
              EmailLoginHint(hintText: 'OR REGISTER WITH EMAIL'),
              SignUpField(),
              PrivacyPolicy(
                policy: policy,
                policyCheck: (bool value) {
                  setState(() {
                    policy = value;
                    print(policy);
                  });
                },
              ),
              PurpleButton(
                text: 'GET STARTED',
                buttonTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
