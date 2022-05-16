import 'package:dashboard_v1/constants/style.dart';
import 'package:dashboard_v1/pages/overview/widgets/bar_chart.dart';
import 'package:dashboard_v1/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class RevenueSectionLarge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 6),
              color: secondaryColor.withOpacity(.1),
              blurRadius: 12),
        ],
      ),
      child: Row(children: [
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: 'Media Sharing in Chats',
              size: 25,
              weight: FontWeight.bold,
              color: light,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 4,
              child: SimpleBarChart.withSampleData(),
            ),
          ],
        )),
        // Container(
        //   width: 1,
        //   height: 200,
        //   color: lightGrey,
        // ),
        // Expanded(
        //     child: Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: [
        //     Row(children: const [
        //       RevenueInfo(
        //         title: 'Today\'s revenue',
        //         amount: '23',
        //       ),
        //       RevenueInfo(
        //         title: 'Last 7 days',
        //         amount: '150',
        //       ),
        //     ]),
        //     const SizedBox(
        //       height: 30,
        //     ),
        //     Row(children: const [
        //       RevenueInfo(
        //         title: 'Last 30 days',
        //         amount: '1,203',
        //       ),
        //       RevenueInfo(
        //         title: 'Last 12 months',
        //         amount: '3,234',
        //       ),
        //     ]),
        //   ],
        // ))
      ]),
    );
  }
}
