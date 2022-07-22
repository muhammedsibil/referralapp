import 'package:flutter/material.dart';
import 'package:referral/screens/my_earnings/recent_earnings_widget.dart';

import 'earnings_dashboard_widget.dart';

class MyEarnings extends StatelessWidget {
  const MyEarnings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                EarningsDashboard(),
                SizedBox(
                  height: 26,
                ),
                RecentEarningsWidget(),
                 
              ],
            ),
          ),
        ),
      ),
    );
  }
}
