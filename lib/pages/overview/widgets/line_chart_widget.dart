import 'package:dashboard_v1/pages/overview/widgets/line_titles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartCustomWidget extends StatelessWidget {
  const LineChartCustomWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        minX: 0,
        maxX: 6,
        minY: 0.1,
        maxY: 4000,
        titlesData: LinesTitles.getTitleData(),
        gridData: FlGridData(
          show: true,
          getDrawingHorizontalLine: (value) {
            return FlLine(color: Colors.grey.withOpacity(.1));
          },
        ),
        lineBarsData: [
          LineChartBarData(
            dotData: FlDotData(
              show: true,
            ),
            belowBarData: BarAreaData(
              show: true,
              colors: [
                Colors.yellow.withOpacity(.2),
              ],
            ),
            isCurved: true,
            colors: [Colors.yellow],
            spots: [
              FlSpot(0, 1500),
              FlSpot(1, 900),
              FlSpot(2, 1000),
              FlSpot(3, 1690),
              FlSpot(4, 3500),
              FlSpot(5, 2600),
              FlSpot(6, 2580),
            ],
          ),
          LineChartBarData(
            dotData: FlDotData(
              show: true,
            ),
            belowBarData:
                BarAreaData(show: true, colors: [Colors.red.withOpacity(.2)]),
            isCurved: true,
            colors: [Colors.red],
            spots: [
              FlSpot(0, 300),
              FlSpot(1, 2500),
              FlSpot(2, 530),
              FlSpot(3, 600),
              FlSpot(4, 900),
              FlSpot(5, 1000),
              FlSpot(6, 1200),
            ],
          ),
          LineChartBarData(
            dotData: FlDotData(
              show: true,
            ),
            belowBarData: BarAreaData(
                show: true, colors: [Colors.cyanAccent.withOpacity(.2)]),
            isCurved: true,
            colors: [Colors.cyanAccent],
            spots: [
              FlSpot(0, 150),
              FlSpot(1, 280),
              FlSpot(2, 550),
              FlSpot(3, 980),
              FlSpot(4, 1200),
              FlSpot(5, 1350),
              FlSpot(6, 1500),
            ],
          ),
          LineChartBarData(
            dotData: FlDotData(
              show: true,
            ),
            belowBarData:
                BarAreaData(show: true, colors: [Colors.green.withOpacity(.2)]),
            isCurved: true,
            colors: [Colors.green],
            spots: [
              FlSpot(0, 120),
              FlSpot(1, 320),
              FlSpot(2, 360),
              FlSpot(3, 700),
              FlSpot(4, 750),
              FlSpot(5, 800),
              FlSpot(6, 880),
            ],
          ),
        ],
      ),
    );
  }
}
