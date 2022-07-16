import 'package:flutter/material.dart';

import '../../constant.dart';

class SignupFormWidget extends StatefulWidget {
  const SignupFormWidget({Key? key}) : super(key: key);

  @override
  State<SignupFormWidget> createState() => _SignupFormWidgetState();
}

class _SignupFormWidgetState extends State<SignupFormWidget> {
  
  TextEditingController name = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    name.dispose();
    phoneNumber.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        headingWidget("Name"),
        const SizedBox(
          height: 8,
        ),
        textFieldWidget(name),
        const SizedBox(
          height: 10,
        ),
        headingWidget("Phone Number"),
        const SizedBox(
          height: 8,
        ),
        textFieldWidget(phoneNumber),
        const SizedBox(
          height: 10,
        ),
        headingWidget("Password"),
        const SizedBox(
          height: 8,
        ),
        textFieldWidget(passwordController),
        const SizedBox(
          height: 10,
        ),
        headingWidget("Confirm Password"),
        const SizedBox(
          height: 8,
        ),
        textFieldWidget(confirmPasswordController),
      ],
    );
  }

  Widget headingWidget(String text) => Text(
        text,
        style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: Constant.PRIMARY_BLACK),
      );

  Widget textFieldWidget(TextEditingController text) => TextField(
        controller: text,
        decoration: InputDecoration(
          filled: true,
          fillColor: Constant.FILLCOLOR,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Constant.BORDER_RADIUS),
          ),
        ),
      );
}
