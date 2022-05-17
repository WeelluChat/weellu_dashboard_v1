import 'package:dashboard_v1/constants/style.dart';
import 'package:dashboard_v1/pages/overview/widgets/line_chart.dart';
import 'package:dashboard_v1/pages/overview/widgets/progress_line.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class OverallInfoCard extends StatelessWidget {
  final Color bodyColor;
  final int percentage;
  final IconData arrowIcon;
  final Color arrowIconColor;
  final String title;
  final Color color;
  final Color iconColor;
  final IconData icon;
  final int quantity;
  final List<FlSpot> spots;
  final List<Color> colors;

  const OverallInfoCard({
    Key key,
    this.title,
    this.color,
    this.icon,
    this.iconColor,
    this.quantity,
    this.arrowIcon,
    this.arrowIconColor,
    this.percentage,
    this.spots,
    this.colors,
    this.bodyColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: bodyColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: color.withOpacity(.1).withAlpha(30),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 45,
                  width: 45,
                  child: Icon(
                    icon,
                    color: iconColor,
                    size: 20,
                  ),
                ),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: Text(
                        "Daily",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.more_vert,
                        color: lightGrey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 18),
                ),
                Container(
                  child: LineChartWidget(
                    colors: colors,
                    spotsData: spots,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "$quantity",
                  style: TextStyle(fontSize: 22, color: color),
                ),
                Row(
                  children: [
                    Icon(
                      arrowIcon,
                      color: arrowIconColor,
                    ),
                    Text(
                      "$percentage%",
                      style: TextStyle(
                        fontSize: 20,
                        color: arrowIconColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            child: ProgressLine(
              color: color,
              percentage: percentage,
            ),
          )
        ],
      ),
    );
  }
}
