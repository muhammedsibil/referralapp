import 'package:flutter/material.dart';

import '../../constant.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({Key? key}) : super(key: key);

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    userNameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        headingWidget("Username"),
        const SizedBox(
          height: 8,
        ),
        textFieldWidget(userNameController),
        const SizedBox(
          height: 14,
        ),
        headingWidget("Password"),
        const SizedBox(
          height: 8,
        ),
        textFieldWidget(passwordController),
      ],
    );
  }

  Widget headingWidget(String text) => Text(text,
      style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 12,
          color: Constant.PRIMARY_BLACK));

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
