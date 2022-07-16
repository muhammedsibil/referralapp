import 'package:flutter/material.dart';
import 'package:referral/constant.dart';
import 'package:referral/screens/login_screen/login_form_widget.dart';

class LoginScreen extends StatelessWidget{
  const LoginScreen({Key? key}) : super(key: key);

 

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    bool iskeyBoardActive = MediaQuery.of(context).viewInsets.bottom == 0;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          // physics: const NeverScrollableScrollPhysics(),
          // reverse: iskeyBoardActive ? false : true,
          child: Padding(
            padding: const EdgeInsets.all(Constant.MARGIN_WIDTH),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                signinDisplayImageWidget(iskeyBoardActive),
                const SizedBox(
                  height: 46,
                ),
                const LoginFormWidget(),
                const SizedBox(
                  height: 8,
                ),
                forgetPasswordWidget(),
                const SizedBox(
                  height: 86,
                ),
                loginButtonWidget(),
                const SizedBox(
                  height: 32,
                ),
                mobileOtpWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget signinDisplayImageWidget(iskeyBoardActive) => Center(
        child: iskeyBoardActive
            ? Image.asset(
                'assets/images/login_display.png',
                width: 150.0,
                height: 236.0,
                fit: BoxFit.contain,
              )
            : const SizedBox(
                height: 0,
              ),
      );

  Widget forgetPasswordWidget() => Align(
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
      );

  Widget loginButtonWidget() => SizedBox(
        height: 50,
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Constant.PRIMARY_BLACK,
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(Constant.BORDER_RADIUS), // <-- Radius
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
      );

  Widget mobileOtpWidget() => Center(
        child: RichText(
          text: const TextSpan(
            text: 'Login with',
            style: TextStyle(
                fontFamily: 'Your App Font Family', color: Colors.black),
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
      );
}
