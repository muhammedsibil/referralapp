import 'package:flutter/material.dart';
import 'package:referral/screens/home_screen/interview_widget.dart';

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
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenHeight / 15.2,
              ),
              welcomeWidget(),
              SizedBox(
                height: screenHeight / 13.5,
              ),
              searchWidget(),
              const SizedBox(
                height: 20,
              ),
              InterviewWidget(),
             const SizedBox(
                height: 36,
              ),
              QuickAccessWidget(),
              
            ],
          ),
        ),
      ),
    );
  }

  Widget welcomeWidget() => Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/prospello_logo.png',
                width: 176,
                height: 62,
                fit: BoxFit.contain,
              ),
              const SizedBox(
                height: 24,
              ),
              RichText(
                text: const TextSpan(
                  text: 'Hi Fadhil,\n',
                  style: TextStyle(
                    height: 1.0,
                    fontSize: 26,
                    color: Constant.PRIMARY_BLACK,
                  ),
                  children: [
                    TextSpan(
                      text: 'Welcome Back!\n',
                      style: TextStyle(
                        color: Constant.PRIMARY_BLACK,
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    WidgetSpan(
                        alignment: PlaceholderAlignment.baseline,
                        baseline: TextBaseline.alphabetic,
                        child: SizedBox(height: 20)),
                    TextSpan(
                      text: 'How Can We Help You?',
                      style: TextStyle(
                        color: Constant.PRIMARY_LIGHT_BLACK,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // Image.asset(
          //   'assets/images/home_screen_display.png',
          //   fit: BoxFit.contain,
          // ),
        ],
      );

  Widget searchWidget() => SizedBox(
        height: 46,
        child: TextField(
          decoration: InputDecoration(
            prefixIcon:
                new Icon(Icons.search, color: Constant.PRIMARY_LIGHT_BLACK),

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Constant.BORDER_RADIUS),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            border: InputBorder.none,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Constant.BORDER_RADIUS),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            hintText: "Search",
            hintStyle: const TextStyle(
              fontSize: 16,
            ),
            filled: true,
            fillColor: Constant.FILLCOLOR,
            // border: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(Constant.BORDER_RADIUS),
            // ),
          ),
          onChanged: (text) {
            text = text.toLowerCase();
            print(text);
          },
        ),
      );
}
