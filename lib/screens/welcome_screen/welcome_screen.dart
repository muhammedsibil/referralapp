import 'package:flutter/material.dart';
import 'package:referral/constant.dart';
import 'package:referral/screens/login_screen/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

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
                Center(
                  child: Image.asset(
                    'assets/images/prospello_logo.png',
                    width: 146,
                    height: 50,
                    fit: BoxFit.contain,
                  ),
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
                const Text('To Prospello Global'),
                const SizedBox(
                  height: 4,
                ),
                const Text('A New Globe Of Endless Oppurtunities'),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  children: [
                    Expanded(
                      child: MaterialButton(
                        height: 50.0,
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1.5),
                            borderRadius:
                                BorderRadius.circular(Constant.BORDER_RADIUS)),
                        textColor: Colors.white,
                        // textColor:

                        onPressed: () async {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()),
                          );
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1.5),
                          borderRadius:
                              BorderRadius.circular(Constant.BORDER_RADIUS),
                        ),
                        height: 50.0,
                        color: Colors.white,
                        textColor: Colors.black,
                        onPressed: () async {},
                        child: const Text(
                          "Register",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
