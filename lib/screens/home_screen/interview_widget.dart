import 'package:flutter/material.dart';

import '../../constant.dart';

class InterviewWidget extends StatelessWidget {
  const InterviewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Constant.PRIMARY_BLACK,
      ),
      padding: const EdgeInsets.all(24),
      child: Column(
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
                        fontWeight: Constant.SEMI_BOLD,
                        color: Constant.PRIMARY_WHITE,
                        fontFamily: 'Poppins'),
                  ),
                  Text(
                    'Technologies',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: Constant.SEMI_BOLD,
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
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            dateTimeWidget(Icons.calendar_today_outlined, "November 17"),
            dateTimeWidget(Icons.calendar_today_outlined, "3:00 pm"),
            dateTimeWidget(Icons.calendar_today_outlined, "offline"),
          ]),
        ],
      ),
    );
  }

  Widget dateTimeWidget(IconData icon, String text) => Row(
        children: [
          Icon(
            icon,
            color: Constant.PRIMARY_LIGHT_BLACK,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            maxLines: 1,
            style: const TextStyle(
                overflow: TextOverflow.ellipsis,
                fontSize: 14,
                color: Constant.PRIMARY_WHITE,
                fontFamily: 'Poppins'),
          ),
        ],
      );
}
