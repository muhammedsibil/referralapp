import 'package:flutter/material.dart';
import '../../constant.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        var screenHeight = MediaQuery.of(context).size.height;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        Image.asset(
          'assets/images/welcome_logo.png',
          width: screenHeight/5.4,
          height: 260,
          fit: BoxFit.contain,
        ),
      ],
    );
  }
}
