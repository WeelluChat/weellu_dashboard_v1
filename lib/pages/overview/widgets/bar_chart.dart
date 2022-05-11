import 'package:charts_flutter/flutter.dart' as charts;
import 'package:dashboard_v1/constants/style.dart';
import 'package:flutter/material.dart';

class SimpleBarChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  const SimpleBarChart(this.seriesList, {this.animate});

  /// Creates a [BarChart] with sample data and no transition.
  factory SimpleBarChart.withSampleData() {
    return SimpleBarChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return charts.BarChart(
      seriesList,
      vertical: true,
      animate: animate,
      primaryMeasureAxis: const charts.NumericAxisSpec(
        renderSpec: charts.GridlineRendererSpec(
          labelStyle: charts.TextStyleSpec(color: charts.Color.white),
        ),
      ),
      domainAxis: const charts.OrdinalAxisSpec(
        renderSpec: charts.SmallTickRendererSpec(
          labelStyle: charts.TextStyleSpec(color: charts.Color.white),
        ),
      ),
      barRendererDecorator: charts.BarLabelDecorator(
        insideLabelStyleSpec: charts.TextStyleSpec(
          color: charts.ColorUtil.fromDartColor(Colors.white),
        ),
        outsideLabelStyleSpec: charts.TextStyleSpec(
            color: charts.ColorUtil.fromDartColor(Colors.white)),
      ),
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<ChatsSeries, String>> _createSampleData() {
    final data = [
      ChatsSeries("Text", 2583, charts.ColorUtil.fromDartColor(Colors.green)),
      ChatsSeries("Audio", 1250, charts.ColorUtil.fromDartColor(Colors.green)),
      ChatsSeries("Images", 1500, charts.ColorUtil.fromDartColor(Colors.green)),
      ChatsSeries("Video", 880, charts.ColorUtil.fromDartColor(Colors.green)),
      ChatsSeries("Files", 365, charts.ColorUtil.fromDartColor(Colors.green)),
      ChatsSeries(
          "Location", 300, charts.ColorUtil.fromDartColor(Colors.green)),
      ChatsSeries("Contact", 100, charts.ColorUtil.fromDartColor(Colors.green)),
    ];

    return [
      charts.Series<ChatsSeries, String>(
        id: 'Sales',
        colorFn: (ChatsSeries data, _) => data.barColor,
        domainFn: (ChatsSeries data, _) => data.type,
        measureFn: (ChatsSeries data, _) => data.quantity,
        labelAccessorFn: (ChatsSeries data, _) => data.quantity.toString(),
        data: data,
      )
    ];
  }
}

/// Sample ordinal data type.
class ChatsSeries {
  final String type;
  final int quantity;
  final charts.Color barColor;

  ChatsSeries(this.type, this.quantity, this.barColor);
}
