import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';

class InterviewWidget extends StatelessWidget {
  const InterviewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Constant.PRIMARY_BLACK,
      ),
      padding: EdgeInsets.all(24),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.purple,
                child: Text('test'),
              ),
              SizedBox(
                width: 14,
              ),
              Column(
                children: [
                  Text(
                    'GFG title',
                    style: TextStyle(
                        color: Constant.PRIMARY_WHITE, fontFamily: 'Poppins'),
                    textScaleFactor: 1.5,
                  ),
                  Text(
                    'This is subtitle',
                    style: TextStyle(color: Constant.PRIMARY_LIGHT_BLACK),
                  ),
                ],
              ),
              Spacer(),
              // Icon(Icons.arrow_forward_ios, color: Constant.PRIMARY_WHITE),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Divider(
            height: 1,
            thickness: 1,
            color: Color(0xff4d4d4d),
          ),
          SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
