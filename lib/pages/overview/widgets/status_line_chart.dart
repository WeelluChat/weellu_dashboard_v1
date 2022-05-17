import 'package:dashboard_v1/constants/style.dart';
import 'package:flutter/material.dart';

import 'line_chart_widget.dart';

class StatusLineChart extends StatelessWidget {
  const StatusLineChart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      height: MediaQuery.of(context).size.height / 2.6,
      width: MediaQuery.of(context).size.width,
      child: Card(
        color: secondaryColor,
        child: Column(
          children: [
            const Text(
              'Status',
              style: TextStyle(fontSize: 25),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(bottom: 10),
                margin: const EdgeInsets.only(left: 260, right: 260),
                decoration: BoxDecoration(color: bgColor.withOpacity(.4)),
                child: Column(
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
                                    color: Colors.yellow,
                                  ),
                                ),
                                const Text('   Text'),
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
                                    color: Colors.cyanAccent,
                                  ),
                                ),
                                const Text('   Images'),
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
                                    color: Colors.green,
                                  ),
                                ),
                                const Text('   Audio'),
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
                                    color: Colors.red,
                                  ),
                                ),
                                const Text('   Video'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Expanded(
                      child: LineChartCustomWidget(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
