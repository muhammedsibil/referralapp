import 'package:flutter/material.dart';

import '../../constant.dart';

class QuickAccessWidget extends StatelessWidget {
  const QuickAccessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 8),
          child: Text(
            "Quick Access",
            style: TextStyle(
              fontWeight: Constant.FONT_WEIGHT_SEMI_BOLD,
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                imageText(
                  screenWidth,
                  164,
                  'assets/images/my_earnings.png',
                  'My Earnings',
                  Constant.PRIMARY_WHITE,
                ),
                const SizedBox(height: 6),
                imageText(screenWidth, 240, 'assets/images/my_projects.png',
                    'My Projects', Constant.PRIMARY_BLACK)
              ],
            ),
            const SizedBox(width: 6),
            Column(
              children: [
                imageText(screenWidth, 240, 'assets/images/refer_a_sale.png',
                    'Refer a Sale', Constant.PRIMARY_BLACK),
                const SizedBox(height: 6),
                imageText(screenWidth, 164, 'assets/images/my_earnings.png',
                    'My earnings', Constant.PRIMARY_WHITE)
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
        width: screenWidth / 2.30,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 20.0,
            ),
          ],
        ),
        child: Card(
          color: color,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image,
                height: height == 240 ? 166 : 70,
                width: height == 240 ? 110 : 70,
                // fit: BoxFit.contain,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: color == Constant.PRIMARY_WHITE
                      ? Constant.PRIMARY_BLACK
                      : Constant.PRIMARY_WHITE,
                ),
              ),
            ],
          ),
        ),
      );
}
