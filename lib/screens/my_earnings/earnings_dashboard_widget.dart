import 'package:flutter/material.dart';

import '../../constant.dart';

class EarningsDashboard extends StatelessWidget {
  const EarningsDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Earnings Dashboard',
          style: TextStyle(
              fontWeight: Constant.FONT_WEIGHT_SEMI_BOLD,
              fontSize: 18,
              color: Colors.black),
        ),
        const SizedBox(
          height: 26,
        ),
        Container(
          height: 162,
          width: double.infinity,
          padding: EdgeInsets.all(18),
          decoration: const BoxDecoration(
            color: Constant.PRIMARY_BLACK,
            borderRadius: BorderRadius.all(
              Radius.circular(Constant.BORDER_RADIUS_HIGH),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'TOTAL EARNING',
                    style: TextStyle(
                        fontWeight: Constant.FONT_WEIGHT_SEMI_BOLD,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 36,
                    width: screenWidth / 3.15,
                    decoration: const BoxDecoration(
                      color: Constant.lOW_BLACK,
                      borderRadius: BorderRadius.all(
                        Radius.circular(Constant.BORDER_RADIUS),
                      ),
                    ),
                    child: Text(
                      '15000',
                      style: TextStyle(
                          fontWeight: Constant.FONT_WEIGHT_MEDIUM,
                          fontSize: 24,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Container(
                height: 126,
                width: screenWidth / 3,
                decoration: const BoxDecoration(
                  color: Constant.PRIMARY_WHITE,
                  borderRadius: BorderRadius.all(
                    Radius.circular(Constant.BORDER_RADIUS_HIGH),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 32,

                      // radius: 20,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 24,
                      width: screenWidth / 4.09,
                      decoration: const BoxDecoration(
                        color: Color(0xffececec),
                        borderRadius: BorderRadius.all(
                          Radius.circular(Constant.BORDER_RADIUS_HIGH),
                        ),
                      ),
                      child: Text(
                        'fayiz',
                        maxLines: 1,
                        style: TextStyle(
                          
                            fontWeight: Constant.FONT_WEIGHT_MEDIUM,
                            fontSize: 12,
                            color: Constant.PRIMARY_BLACK),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
