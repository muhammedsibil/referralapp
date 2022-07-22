import 'package:flutter/material.dart';

import '../../constant.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    print(screenWidth);
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Constant.PRIMARY_BLACK,
      ),
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 25,
                backgroundColor: Colors.purple,
                child: Text('test'),
              ),
              const SizedBox(
                width: 14,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Prospello',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: Constant.FONT_WEIGHT_SEMI_BOLD,
                        color: Constant.PRIMARY_WHITE,
                        fontFamily: 'Poppins'),
                  ),
                  Text(
                    'Technologies',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: Constant.FONT_WEIGHT_SEMI_BOLD,
                        color: Constant.PRIMARY_LIGHT_BLACK,
                        fontFamily: 'Poppins'),
                  ),
                ],
              ),
              // Spacer(),
              // Icon(Icons.arrow_forward_ios, color: Constant.PRIMARY_WHITE),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          const Divider(
            height: 1,
            thickness: 1,
            color: Color(0xff4d4d4d),
          ),
          const SizedBox(
            height: 24,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            dateTimeWidget(
                screenWidth, Icons.calendar_today_outlined, "November 7"),
            const SizedBox(
              width: 10,
            ),
            dateTimeWidget(
                screenWidth, Icons.calendar_today_outlined, "3:00 pm"),
            const SizedBox(
              width: 10,
            ),
            dateTimeWidget(
                screenWidth, Icons.calendar_today_outlined, "offline"),
          ],
          ),
        ],
      ),
    );
  }

  Widget dateTimeWidget(screenWidth, IconData icon, String text) => Expanded(
        child: Row(
          // mainAxisSize:MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: Constant.PRIMARY_LIGHT_BLACK,
              size: 14,
            ),
            const SizedBox(
              width: 4,
            ),
            Expanded(
              child: Text(
                text,
                maxLines: 1,
                softWrap: true,
                style: TextStyle(
                    overflow: TextOverflow.visible,
                    fontSize: screenWidth / 30,
                    color: Constant.PRIMARY_WHITE,
                    fontFamily: 'Poppins'),
              ),
            ),
          ],
        ),
      );
}
