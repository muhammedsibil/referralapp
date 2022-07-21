import 'package:flutter/material.dart';
import 'package:referral/screens/home_screen/iam_here_for_widget.dart';
import 'package:referral/screens/home_screen/interview_widget.dart';
import 'package:referral/screens/home_screen/search_widget.dart';
import 'package:referral/screens/home_screen/welcome_widget.dart';

import '../../constant.dart';
import 'quick_access_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    // print(screenHeight);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: screenHeight / 15.2,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: WelcomeWidget(),
            ),
            SizedBox(
              height: screenHeight / 38,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20,
                bottom: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SearchWidget(),
                  const SizedBox(
                    height: 20,
                  ),
                  const NotificationWidget(),
                  const SizedBox(
                    height: 36,
                  ),
                  const QuickAccessWidget(),
                  const SizedBox(
                    height: 30,
                  ),
                  const IamHereForWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
