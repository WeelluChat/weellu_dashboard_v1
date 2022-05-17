import 'package:dashboard_v1/pages/overview/widgets/bar_chart.dart';
import 'package:flutter/material.dart';

import 'package:charts_flutter/flutter.dart' as charts;

class BarChartCData {
  static final List<ChatsSeries> data = [
    ChatsSeries(
      "Text",
      2583,
      charts.ColorUtil.fromDartColor(Colors.green),
    ),
    ChatsSeries(
      "Audio",
      1250,
      charts.ColorUtil.fromDartColor(Colors.green),
    ),
    ChatsSeries(
      "Images",
      1500,
      charts.ColorUtil.fromDartColor(Colors.green),
    ),
    ChatsSeries(
      "Video",
      880,
      charts.ColorUtil.fromDartColor(Colors.green),
    ),
    ChatsSeries(
      "Files",
      365,
      charts.ColorUtil.fromDartColor(Colors.green),
    ),
    ChatsSeries(
      "Location",
      300,
      charts.ColorUtil.fromDartColor(Colors.green),
    ),
    ChatsSeries(
      "Contact",
      100,
      charts.ColorUtil.fromDartColor(Colors.green),
    ),
  ];
}
