import 'package:dashboard_v1/constants/style.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'list_pie_chart_data1.dart';

class UsersActivityPieChart extends StatelessWidget {
  const UsersActivityPieChart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      height: MediaQuery.of(context).size.height / 2.6,
      width: MediaQuery.of(context).size.width / 2.44,
      child: Card(
        color: secondaryColor,
        child: Column(
          children: [
            const Text(
              "Users' Activity",
              style: const TextStyle(fontSize: 25),
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
                                color: Colors.purple,
                              ),
                            ),
                            const Text('   Groups'),
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
                            const Text('   Broadcasts'),
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
                                color: Colors.pink,
                              ),
                            ),
                            const Text('   Chats'),
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
                        pieTouchData: PieTouchData(),
                        borderData: FlBorderData(show: false),
                        sectionsSpace: 0,
                        centerSpaceRadius: 50,
                        sections: getSections1(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
