import 'package:flutter/material.dart';
import '../../constant.dart';

class IamHereForWidget extends StatelessWidget {
  const IamHereForWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Iam Here for",
              style: TextStyle(
                fontWeight: Constant.FONT_WEIGHT_SEMI_BOLD,
                color: Color(0xFF000000),
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              children: [
                imageText(screenWidth, 270, 'assets/images/interview.png',
                    'Interview', Constant.PRIMARY_WHITE),
                const SizedBox(width: 20),

                // Spacer(),
                imageText(screenWidth, 270, 'assets/images/appointment.png',
                    'Appoinment', Constant.PRIMARY_WHITE),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget imageText(
    screenWidth,
    double height,
    String image,
    String text,
    Color color,
  ) =>
      Container(
        height: height,
        width: screenWidth / 2.40,
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Constant.SHADOW_COLOR,
              blurRadius: 20.0,
            ),
          ],
        ),
        child: Card(
          margin: const EdgeInsets.all(0),
          color: color,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image,
                height: height == 270 ? 166 : 70,
                width: height == 270 ? 110 : 70,
                // fit: BoxFit.fill,
              ),
              const SizedBox(
                height: 10,
              ),
              Flexible(
                child: Text(
                  text,
                  style: TextStyle(
                    fontWeight: Constant.FONT_WEIGHT_MEDIUM,
                    fontSize: 16,
                    color: color == Constant.PRIMARY_WHITE
                        ? Constant.PRIMARY_BLACK
                        : Constant.PRIMARY_WHITE,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
