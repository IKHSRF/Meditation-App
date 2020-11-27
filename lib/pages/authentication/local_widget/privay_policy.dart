import 'package:flutter/material.dart';
import 'package:meditation/constant/color.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({
    Key key,
    @required this.policy,
    @required this.policyCheck,
  }) : super(key: key);

  final bool policy;
  final Function policyCheck;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'i have read the ',
                style: TextStyle(color: blackTextColor, fontSize: 14),
              ),
              TextSpan(
                text: 'Privace Policy',
                style: TextStyle(color: Color(0xFF7583CA), fontSize: 14),
              )
            ],
          ),
        ),
        Checkbox(
          value: policy,
          onChanged: policyCheck,
        ),
      ],
    );
  }
}
