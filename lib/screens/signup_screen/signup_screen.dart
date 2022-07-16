import 'package:flutter/material.dart';
import 'package:referral/constant.dart';
import 'package:referral/screens/signup_screen/signup_form_widget.dart';

class SignupScreen extends StatelessWidget{
  const SignupScreen({Key? key}) : super(key: key);




  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // bool iskeyBoardActive = MediaQuery.of(context).viewInsets.bottom == 0;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          // physics: const NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(Constant.MARGIN_WIDTH),
            child: SizedBox(
              height: MediaQuery.of(context).size.height - 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  signupDisplayImageWidget(),
                 const Spacer(),
                  const SignupFormWidget(),
                  const SizedBox(
                    height: 50,
                  ),
                  signUpButtton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
 Widget signupDisplayImageWidget() => Center(
                      child: Image.asset(
                    'assets/images/signup_display.png',
                    // width: 374.0,

                    // height: 290.0,
                    fit: BoxFit.cover,
                  ),);
  Widget signUpButtton()   => SizedBox(
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
                      onPressed: ()  {},
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  );
}
