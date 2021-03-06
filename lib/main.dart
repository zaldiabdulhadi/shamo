import 'package:bwa_shamo/pages/home/main_page.dart';
import 'package:bwa_shamo/pages/sign_up_page.dart';
import 'package:flutter/material.dart';

import 'pages/sign_in_page.dart';
import 'pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
      },
    );
  }
}
