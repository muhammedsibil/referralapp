import 'package:flutter/material.dart';

import '../../constant.dart';

class RecentEarningsWidget extends StatelessWidget {
  const RecentEarningsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Recent Earnings',
          maxLines: 1,
          style: TextStyle(
              fontWeight: Constant.FONT_WEIGHT_MEDIUM,
              fontSize: 18,
              color: Constant.BLACK),
        ),
        SizedBox(
          height: 14,
        ),
        // Expanded(
        //   child: ListView.builder(
        //     scrollDirection: Axis.horizontal,
        //     itemCount: 10,
        //     itemBuilder: (context, index) {
        //       return ListTile(
        //         title: Text("items[index]"),
        //       );
        //     },
        //   ),
        // )
      ],
    );
  }
}
