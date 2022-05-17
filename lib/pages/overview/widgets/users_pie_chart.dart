import 'package:dashboard_v1/constants/style.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'list_pie_chart_data2.dart';

class UsersPieChart extends StatelessWidget {
  const UsersPieChart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: MediaQuery.of(context).size.height / 2.6,
      width: MediaQuery.of(context).size.width / 2.44,
      child: Card(
        color: secondaryColor,
        child: Column(
          children: [
            const Text(
              'Users',
              style: TextStyle(fontSize: 25),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 10, right: 50, left: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            Container(
                              height: 15,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.green,
                              ),
                            ),
                            const Text('   Android'),
                          ],
                        ),
                      ),
                      SizedBox(
                        child: Row(
                          children: [
                            Container(
                              height: 15,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.blue,
                              ),
                            ),
                            const Text('   iOS'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 3.5,
                  width: MediaQuery.of(context).size.width / 2.44,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: PieChart(
                      PieChartData(
                        borderData: FlBorderData(
                          show: false,
                        ),
                        sectionsSpace: 0,
                        centerSpaceRadius: 0,
                        sections: getSections2(),
                      ),
                    ),
                  ),
                  // child: PieChartSample3(),
                  // child: PieChart(
                  //   PieChartData(sections: getSections2()),
                  // ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
