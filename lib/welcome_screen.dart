import 'package:flutter/material.dart';
import 'package:referral/constant.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(Constant.MARGIN_WIDTH),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 26,
                ),
                Center(
                  child: Image.asset(
                    'assets/images/welcome_display.png',
                    width: 374.0,
                    height: 300.0,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                const Text(
                  'Welcome!',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text('To Prospello Global'),
                const SizedBox(
                  height: 4,
                ),
                const Text('A New Globe Of Endless Oppurtunities'),
                const SizedBox(
                  height: 86,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                Constant.BORDER_RADIUS), // <-- Radius
                          ),
                        ),
                        onPressed: () async {},
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                Constant.BORDER_RADIUS), // <-- Radius
                          ),
                        ),
                        onPressed: () async {},
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Center(
                  child: RichText(
                    text: const TextSpan(
                      text: 'Facing Trouble?',
                      style: TextStyle(
                          fontFamily: 'Your App Font Family',
                          color: Colors.black),
                      children: [
                        WidgetSpan(
                            alignment: PlaceholderAlignment.baseline,
                            baseline: TextBaseline.alphabetic,
                            child: SizedBox(width: 4)),
                        TextSpan(
                          text: 'Call Our Executive',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
