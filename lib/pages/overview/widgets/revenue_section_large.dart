import 'package:dashboard_template/constants/style.dart';
import 'package:dashboard_template/pages/overview/widgets/bar_chart.dart';
import 'package:dashboard_template/pages/overview/widgets/revenue_info.dart';
import 'package:dashboard_template/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class RevenueSectionLarge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 6),
                color: lightGrey.withOpacity(.1),
                blurRadius: 12),
          ],
          border: Border.all(color: lightGrey, width: .5)),
      child: Row(children: [
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: 'Revenue Chart',
              size: 20,
              weight: FontWeight.bold,
              color: lightGrey,
            ),
            SizedBox(
              width: 600,
              height: 200,
              child: SimpleBarChart.withSampleData(),
            ),
          ],
        )),
        Container(
          width: 1,
          height: 200,
          color: lightGrey,
        ),
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(children: const [
              RevenueInfo(
                title: 'Today\'s revenue',
                amount: '23',
              ),
              RevenueInfo(
                title: 'Last 7 days',
                amount: '150',
              ),
            ]),
            const SizedBox(
              height: 30,
            ),
            Row(children: const [
              RevenueInfo(
                title: 'Last 30 days',
                amount: '1,203',
              ),
              RevenueInfo(
                title: 'Last 12 months',
                amount: '3,234',
              ),
            ]),
          ],
        ))
      ]),
    );
  }
}
