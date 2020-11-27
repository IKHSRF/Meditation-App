import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation/pages/authentication/signin_page.dart';
import 'package:meditation/pages/authentication/signup_page.dart';
import 'package:meditation/pages/home/home.dart';
import 'pages/getstarted/get_started.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'HelveticaNeue'),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => GetStarted(),
        ),
        GetPage(
          name: '/signIn',
          page: () => SignIn(),
        ),
        GetPage(
          name: '/signUp',
          page: () => SignUp(),
        ),
        GetPage(
          name: '/home',
          page: () => Home(),
        ),
      ],
    );
  }
}
