import 'package:flutter/material.dart';
import 'package:referral/constant.dart';
import 'screens/home_screen/homescreen.dart';
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
          theme:  ThemeData(
            fontFamily: 'Poppins',
            scaffoldBackgroundColor: Constant.PRIMARY_WHITE),

      // theme: ThemeData(
       
      //   primarySwatch: Colors.blue,
      // ),
      // home:  WelcomeScreen(),
      // home: const WelcomeScreen(),

      home: HomeScreen(),
      // home: MyWidget(),
    );
  }
}
