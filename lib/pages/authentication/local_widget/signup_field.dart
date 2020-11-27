import 'package:flutter/material.dart';

import 'auth_field.dart';

class SignUpField extends StatelessWidget {
  const SignUpField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        AuthField(hintText: 'Username', onChanged: (value) {}),
        AuthField(hintText: 'Email Address', onChanged: (value) {}),
        AuthField(hintText: 'Password', onChanged: (value) {}),
      ],
    );
  }
}
