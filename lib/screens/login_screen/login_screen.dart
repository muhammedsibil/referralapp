import 'package:flutter/material.dart';
import 'package:referral/constant.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    bool iskeyBoardActive = MediaQuery.of(context).viewInsets.bottom == 0;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          reverse: iskeyBoardActive ? false : true,
          child: Padding(
            padding: const EdgeInsets.all(Constant.MARGIN_WIDTH),
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: iskeyBoardActive
                        ? Image.asset(
                            'assets/images/login_display.png',
                            width: 150.0,
                            height: 236.0,
                            fit: BoxFit.contain,
                          )
                        : const SizedBox(
                            height: 46,
                          ),
                  ),
                  const SizedBox(
                    height: 46,
                  ),
                  const Text(
                    'User Name',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Constant.PRIMARY_BLACK),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(Constant.BORDER_RADIUS),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  const Text(
                    'Password',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Constant.PRIMARY_BLACK),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(Constant.BORDER_RADIUS),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => RegisterPage()));
                      },
                      child: const Text(
                        'Forget Password',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Constant.PRIMARY_BLACK),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 86,
                  ),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Constant.PRIMARY_BLACK,
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
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Center(
                    child: RichText(
                      text: const TextSpan(
                        text: 'Login with',
                        style: TextStyle(
                            fontFamily: 'Your App Font Family',
                            color: Colors.black),
                        children: [
                          WidgetSpan(
                            alignment: PlaceholderAlignment.baseline,
                            baseline: TextBaseline.alphabetic,
                            child: SizedBox(width: 4),
                          ),
                          TextSpan(
                            text: 'Mobile Otp',
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
      ),
    );
  }
}
///////////
/////
/////
/////
///
//

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextField(
                // controller: passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(Constant.BORDER_RADIUS),
                  ),
                ),
              ),
              Container(
                height: 100,
                color: Colors.green,
              ),
              Container(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
