import 'package:flutter/material.dart';
import 'screens/welcome_screen/welcome_screen.dart';

import 'screens/login_screen/login_screen.dart';
import 'screens/signup_screen/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      // home:  WelcomeScreen(),
      // home: const WelcomeScreen(),
      home: SignupScreen(),
      // home: MyWidget(),
    );
  }
}



